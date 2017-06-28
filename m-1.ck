public class ElementFileWorker {
    private static File file = new File("info.txt");

    public static void fileWrite(int exp) {
        try {
            FileWriter writer = new FileWriter(file);
            writer.write(exp);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static int fileRead() throws FileNotFoundException {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader in = new BufferedReader(new FileReader(file.getAbsoluteFile()));
            try {
                String s;
                while ((s = in.readLine()) != null) {
                    sb.append(s);
                }
            } finally {
                in.close();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        int retState = Integer.parseInt(sb.toString());
        return retState;
    }
}