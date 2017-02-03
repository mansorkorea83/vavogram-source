.class final Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/DataSource;


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private final encryptionIv:[B

.field private final encryptionKey:[B

.field private final upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->encryptionKey:[B

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->encryptionIv:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    return-void
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->encryptionKey:[B

    const-string/jumbo v5, "AES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->encryptionIv:[B

    invoke-direct {v1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v0, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    new-instance v4, Ljavax/crypto/CipherInputStream;

    new-instance v5, Lorg/telegram/messenger/exoplayer/upstream/DataSourceInputStream;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-direct {v5, v6, p1}, Lorg/telegram/messenger/exoplayer/upstream/DataSourceInputStream;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)V

    invoke-direct {v4, v5, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    const-wide/16 v4, -0x1

    return-wide v4

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
