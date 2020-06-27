package rsa

import (
	"fmt"
	"github.com/yuchenfw/gocrypt"
	"testing"
)

type RSACryptTest struct {
	data       string
	encodeType gocrypt.Encode
	hashType   gocrypt.Hash
}

var (
	RSASecret = &rsaCrypt{}

	rsaTest = RSACryptTest{}
)

func TestNewRSACrypt(t *testing.T) {
	RSASecret = NewRSACrypt(Secret{
		PublicKey:          "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtMzanVUazAIRpp4xKnoZuBdkDg/7I3t2R3XKjv8w/5c2ZP15CNd+32gCXKc4EyB/U1RdMzwIT9ji07gzjS47e3kA9X2GGmzby1L9+5LoxJqIg578OPiBMEPoAgei7msF16LM9MCXG5Y8e9oNfoxAgl35rKO4h3UqzQtUw6pVzZr3d24WZBkb21UpA/l7xEvzwECW0buj4M7VTGeNhFjeXudWg4S8kPrYzybGynzV/2449mDXOGN2fEIKgy3hnMgqRj1ibyamcT0cqtUduYgw1XMwyyD9hTa3qihxhA4E1h3Xsz57DbbaosRnG0qAy3s8+P7MA1K4b7h1BSG8YTL46YQ2C5hJkmx3Tc0kvl25CKgdioosx5kH/jc2HySvT6aDNYiyHak9mAg5eyjjCizZqlI8fahjZRvZUQGUQ55bYsn9QI39IZ8PfVLKv1YouqGsHOImeyxUVC/5svv9MP+Z/+Lm51v/2TkKpMHWtDoNx1pC86W8lNpfnlgQ46MFZIY7V0yPk9R5gQXGxoYRjUQEBL93YuaF3yqidaG5Kq+IQ1UKW3Thp93FiQeOGb2DO/twcyQKOF9NMEZQvVdrEqcgXhpEkiYkJrfwHPptjRB2YYEJqfxvVTv5OKP+KqrIInNuhmmZKhOfEnWA/UUJtDJM5pGpmNNZkSu781w08g7SsCMCAwEAAQ==",
		PublicKeyDataType:  gocrypt.Base64,
		PrivateKey:         "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",
		PrivateKeyType:     gocrypt.PKCS1,
		PrivateKeyDataType: gocrypt.Base64,
	})

	fmt.Printf("RSASecret %+v \n", RSASecret)
}

func TestRsaCrypt_Decrypt(t *testing.T) {
	TestNewRSACrypt(t)

	rsaTest.data = "test1"
	rsaTest.encodeType = gocrypt.Base64
	rsaTest.hashType = gocrypt.SHA256

	//encrypt data & encode result
	encrypt, err := RSASecret.Encrypt(rsaTest.data, rsaTest.encodeType)

	if err != nil {
		t.Fatalf("encrypt error : %v", err)
	}
	fmt.Println("encrypt", encrypt)
}

func BenchmarkRSACrypt(t *testing.B) {
	for i := 0; i < t.N; i++ {
		var secretInfo = Secret{
			PublicKey:          "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyoiAraTnAbCoqGVOKugFDM2/ms2szXmb3zTOU3ByicH/XPZqy7Eougbs8OQQIoNW4xKw8PNyWf0lfr90qBfPj27INn6N7umVmbHCNCKkQ4frPn46xesw1ywtc2GhOEzZlC8ajlnzBUkj5FJZcrNjXfFmfsQcFQP0g/o/3CAUpk1BXFXt7eZsaYdyn0m7fMoyFt1wlF8egQeGYYE98vtKsvrII51HK8vOEf+5VXU4UZxGfvyzS3A8kuNEkKEh1n9mazjfPBT0KGSiOGh7Nugks+jjfswSgXRK/b2eP3fS7U625rbS798pKxnoS2E0Pgpzdk5fWoNgAlG/n2F9oI2/kQIDAQAB",
			PublicKeyDataType:  gocrypt.Base64,
			PrivateKey:         "MIIEowIBAAKCAQEAyoiAraTnAbCoqGVOKugFDM2/ms2szXmb3zTOU3ByicH/XPZqy7Eougbs8OQQIoNW4xKw8PNyWf0lfr90qBfPj27INn6N7umVmbHCNCKkQ4frPn46xesw1ywtc2GhOEzZlC8ajlnzBUkj5FJZcrNjXfFmfsQcFQP0g/o/3CAUpk1BXFXt7eZsaYdyn0m7fMoyFt1wlF8egQeGYYE98vtKsvrII51HK8vOEf+5VXU4UZxGfvyzS3A8kuNEkKEh1n9mazjfPBT0KGSiOGh7Nugks+jjfswSgXRK/b2eP3fS7U625rbS798pKxnoS2E0Pgpzdk5fWoNgAlG/n2F9oI2/kQIDAQABAoIBAF378hqiR0CVhe5+9EMc4BsM7zka8HF5WUe+7W/y4nPivmmZP/29/DQ3OoSekI4zfIJrDgkCL7JqspeaqLvIMN1Sfz4qhBq18mIcBw7CdI+R5yxcz1FAzq1LJtxAFdxWbTFCmoQsYYW2Zx1wyWlcrWPOvc1dm9p0t2b3HeM8T9jLdY+D0Bm9zmAS0nwTuDBxYS77DB9Ncl6pWLLd197/5IoN1/nunFuzpkiwMPI9RF7lgrnUthc/1Gfnylz5/tXCiQsEVSbAdbMXt9nsV0RgVeMcPq/aUqTMLS2lIV8JySWDrRQi4yPHU0hIjcp6ggo53YMuncJZweI/wwkJexojz0ECgYEA5QzRObpU0CryfJ7qa97/USIKHbvl6PuQG9OLyUeP9bG0edidQhUrR4EZwjIl73O8CTJ0bB24wAKZZEOK3eJeqG/N0q+CiD83ygr8pSZzpE1xvqQp32IgXtgvm7/UmT8cfAp05Z3bF4jcA8uXwodBz4NsVGijlO78PsCooLsArM0CgYEA4lz5pXDEN3w5JwkbspLnUSUS738hne8YM0PchCaww+8sXLS9GLL2CHcvwh6Tv9Mee7r6SdbDI73x118y68WEDDhidiYZCLhXJN2v12ezJOMqH5m9wVJzQOGNv6kPV1EW1WlWxoJQGxCdzbZMLxtTbyTZe3+iAVG++8u6NWMV3dUCgYA1dm1rnQto321kGy+6Z/2OMXTNBeufGwDDDfilzZdTkNwASMhEAW7trLuXcV8bahcsymMUTUevQawOFBnYupq/lAEluSOtq5vZBAF+huAdLJptFiJT6rKFkM5j+z2jW3DJnyMz6UmXT7GTDTVqCWoaBqIFfbsY60NjXlK92YhJzQKBgQDWfQjktbSHasLw9RV0oPRklD+cBhfBgfOpZ+0En3CxR+j+MxhW1gSBQwZS5wxTIGXrEeHlo4UmUe5diExE0dRsi+ToVPM1qw6P1SuwbQd3tXSNmu0NyOWCnfblm/j4YNLFB1p9IK9s5dLRQKJxpG/ribw15FuK6n2QM5vOyIPIvQKBgE5PUzRUCCVsjKAxZOfaZQatMbSzAUSB3bNmUw+F3pDq8ibs6XXvtySowG2femlPDNL7mDMuUc9kYrtTFTQNrEsQGB55wBopX3UxzRjpXJoAQ/d+RPdrSJC7xJyu+URoFI6ae0I3bx1BzjctYU0Rv5DUh+j9leMH5N2S9vHb+vqu",
			PrivateKeyType:     gocrypt.PKCS1,
			PrivateKeyDataType: gocrypt.Base64,
		}
		handle := NewRSACrypt(secretInfo)
		var rsaTests = []RSACryptTest{
			{
				"test",
				gocrypt.HEX,
				gocrypt.MD5,
			},
			{
				"base64",
				gocrypt.Base64,
				gocrypt.SHA256,
			},
			{
				"01234567890123456789012345678901234567890123456789012",
				gocrypt.String,
				gocrypt.SHA1,
			},
		}
		for _, rsaTest := range rsaTests {
			//encrypt data & encode result
			encrypt, err := handle.Encrypt(rsaTest.data, rsaTest.encodeType)
			if err != nil {
				t.Fatalf("encrypt error : %v", err)
			}
			//decrypt encrypted & encoded data
			decrypt, err := handle.Decrypt(encrypt, rsaTest.encodeType)
			if err != nil {
				t.Fatalf("decrypt error : %v", err)
			}
			if decrypt != rsaTest.data {
				t.Fatalf("decrypt get result %s , want get %s ", decrypt, rsaTest.data)
			}
			//sign data with digest algorithm & encode result
			sign, err := handle.Sign(rsaTest.data, rsaTest.hashType, rsaTest.encodeType)
			if err != nil {
				t.Fatalf("sign error : %v", err)
			}
			//verify data that signed with digest algorithm & encoded whether match original data
			verifySign, err := handle.VerifySign(rsaTest.data, rsaTest.hashType, sign, rsaTest.encodeType)
			if err != nil {
				t.Fatalf("verifySign error : %v", err)
			}
			if !verifySign {
				t.Fatal("verifySign result failed")
			}
		}
	}
}
