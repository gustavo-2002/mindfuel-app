class AdviceRepository {
  static String getAdviceForMood(String mood) {
    Map<String, String> adviceMap = {
      '😀 Feliz': 'Aproveite o dia e compartilhe sua felicidade com os outros!',
      '😔 Triste': 'Lembre-se de que está tudo bem sentir-se triste. Faça algo que você gosta.',
      '😐 Calmo': 'Reserve um tempo para relaxar e praticar a autocompaixão.',
      '😠 Irritado': 'Respire fundo e encontre maneiras saudáveis de expressar sua frustração.',
    };

    return adviceMap.containsKey(mood) ? adviceMap[mood]! : 'Sem conselho para este humor.';
  }
}