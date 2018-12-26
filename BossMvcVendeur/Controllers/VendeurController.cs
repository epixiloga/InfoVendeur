using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BossMvcVendeur.Layers;

namespace BossMvcVendeur.Controllers
{
    public class VendeurController : Controller
    {

        public ActionResult Show()
        {
            VendeurLayer layer = new VendeurLayer();
            
            this.ViewBag.Vendeurs = layer.GetAll(); // On récupère la liste de tous les vendeurs pour les afficher sur la liste
            
            return View();
        }

        [HttpPost]
        public ActionResult Show(FormCollection collection)
        {
            VendeurLayer layer = new VendeurLayer();
            this.ViewBag.Vendeurs = layer.GetAll();

            if (collection["choixVendeur"] != null && collection["choixVendeur"] != "default")
            {
                if(int.TryParse(collection["choixVendeur"], out int vendeurId))
                {
                    this.ViewBag.Vendeur = layer.GetById(vendeurId); // On récupère le vendeur par Id pour l'afficher (avec ses photos)
                }
            }

            return View();
        }
    }
}