window.addEventListener("load", () => {
  let btn = document.getElementById("btn-send-message");
  btn.addEventListener("click", () => {
    let msg =
      "📌¿Tienes dolores físicos, estrés y ansiedad? Prueba (Producto) y mejora tu bienestar.👊" +
      "\n(Producto) es 100 % natural, efectivo y seguro. ¿Qué puede hacer por ti? 👇" +
      "\n✅ Disminuye dolores crónicos." +
      "\n✅ Reduce los síntomas de la fibromialgia." +
      "\n✅ Controla tu ansiedad, estrés y depresión." +
      "\n✅ Combate desórdenes metabólicos y cardiovasculares." +
      "\n😄 Obtén grandes resultados en beneficio de tu salud. 👍🏼 No hay efectos secundarios. 📢 Te brindamos una atención personalizada para que obtengas los mejores resultados. " +
      "\n¿Te interesa? Estamos para ayudarte🙋‍♂️";

    window.open(encodeURI(`https://wa.me/+51910852459?text=${msg}`));
  });
});
