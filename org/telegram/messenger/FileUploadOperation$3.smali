.class Lorg/telegram/messenger/FileUploadOperation$3;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileUploadOperation;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    const/16 v11, 0x20

    const/16 v10, 0x10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #setter for: Lorg/telegram/messenger/FileUploadOperation;->requestToken:I
    invoke-static {v0, v9}, Lorg/telegram/messenger/FileUploadOperation;->access$702(Lorg/telegram/messenger/FileUploadOperation;I)I

    if-nez p2, :cond_5

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$808(Lorg/telegram/messenger/FileUploadOperation;)I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v0, v0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->currentUploaded:J
    invoke-static {v4}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    invoke-static {v5}, Lorg/telegram/messenger/FileUploadOperation;->access$200(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-interface {v0, v1, v4}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didChangedUploadProgress(Lorg/telegram/messenger/FileUploadOperation;F)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1000(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    const/4 v1, 0x3

    iput v1, v0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->key:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1100(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1200(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;-><init>()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$800(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->parts:I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1400(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1500(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$1500(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v0, v0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #calls: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1600(Lorg/telegram/messenger/FileUploadOperation;)V

    :goto_1
    return-void

    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputFile;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%32s"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    invoke-static {v6}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v5, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->md5_checksum:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1200(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;-><init>()V

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$800(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->parts:I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1400(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->key_fingerprint:I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v4, v0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    iget-object v5, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->key:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1100(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v8

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->iv:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1800(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v9

    move-object v6, v3

    move-object v7, v2

    invoke-interface/range {v4 .. v9}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #calls: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1600(Lorg/telegram/messenger/FileUploadOperation;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%32s"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #getter for: Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    invoke-static {v6}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v5, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->md5_checksum:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #calls: Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$000(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v0, v0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #calls: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1600(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v0, v0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    #calls: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1600(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_1
.end method
