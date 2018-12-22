using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BossMvcVendeur.Controllers
{
    public class VendeurController : Controller
    {
        public ActionResult Show(FormCollection collection)
        {
            if(collection["choixVendeur"] != null && collection["choixVendeur"] != "default")
            {
                this.ViewBag.VendeurId = int.Parse(collection["choixVendeur"]);
            }

            this.ViewBag.Vendeurs = Layers.VendeurLayer.GetAll(); // On récupère la liste de tous les vendeurs pour les afficher sur la liste
            if(this.ViewBag.VendeurId != null)
            {
                this.ViewBag.Vendeur = Layers.VendeurLayer.GetById(this.ViewBag.VendeurId); // On récupère le vendeur par Id pour l'afficher (avec ses photos)
            }

            return View();
        }
    }
}