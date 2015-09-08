package pkg;

class MySequence implements Sequence {

    /** Returns an empty sequence. */
    public static MySequence create() {
        return new MySequence();
    }

    /** Returns a sequence that consists of the given objects. */
    public static MySequence create(Object... os) {
        MySequence mySeq = MySequence.create();
        for (Object o : os) {
            mySeq.insert(o);
        }
        return mySeq;
    }

    /* [TODO]: You should implement this constructor */
    private MySequence() {
    }

    /* Feel free to add private fields/methods here */

    /* Interface implementations. */
    /* [TODO]: You should implement these methods */

    public void insert(Object o) {
    }

    public void delete(Object o) {
    }

    public boolean has(Object o) {
        return false;
    }

    public Object[] getElements() {
        return null;
    }
}
