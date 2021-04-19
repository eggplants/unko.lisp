(defpackage unko/tests/main
  (:use :cl
        :unko
        :rove))
(in-package :unko/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :unko)' in your Lisp.

(deftest test-target-1
  (testing "n=1"
	   (ok (equal (unko:unko-n-times 1) '("💩")))))
(deftest test-target-2
  (testing "n=2"
	   (ok (equal (unko:unko-n-times 2) '("💩" "💩")))))
(deftest test-target-3
  (testing "n=0"
	   (ok (signals (unko:unko-n-times 0)))))
(deftest test-target-4
  (testing "n<0"
	   (ok (signals (unko:unko-n-times -1)))))
(deftest test-target-5
  (testing "n is not integer"
	   (ok (signals (unko:unko-n-times "a")))))


