using BossMvcVendeur.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BossMvcVendeur.Layers
{
    public class VendeurLayer
    {
        public List<Vendeur> GetAll()
        {
            using (KartinaEntities context=new KartinaEntities())
            {
                var query = from v in context.Vendeur
                            select v;
                return query.ToList();
            }
        }

        public Vendeur GetById(int id)
        {
            using (KartinaEntities context = new KartinaEntities())
            {
                var query = from v in context.Vendeur.Include("Photo")
                            where v.Id == id
                            select v;

                return query.FirstOrDefault();
            }
        }
    }
}