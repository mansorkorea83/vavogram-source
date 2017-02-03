.class Lorg/telegram/messenger/ImageLoader$7;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$cacheOnly:Z

.field final synthetic val$ext:Ljava/lang/String;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$finalIsNeedsQualityThumb:Z

.field final synthetic val$finalTag:Ljava/lang/Integer;

.field final synthetic val$httpLocation:Ljava/lang/String;

.field final synthetic val$imageLocation:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$shouldGenerateQualityThumb:Z

.field final synthetic val$size:I

.field final synthetic val$thumb:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;ZZILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p7, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    iput-boolean p9, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    iput-object p10, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    iput-boolean p12, p0, Lorg/telegram/messenger/ImageLoader$7;->val$shouldGenerateQualityThumb:Z

    iput-boolean p13, p0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    iput p14, p0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    iput-object p15, p0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v7, :cond_1

    if-eq v7, v8, :cond_0

    if-ne v7, v6, :cond_c

    :cond_0
    const/4 v5, 0x1

    :cond_1
    :goto_0
    if-nez v5, :cond_2

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_2
    if-nez v5, :cond_3

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_3
    if-nez v5, :cond_b

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "http"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "thumb://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, ":"

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-ltz v13, :cond_4

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    new-instance v14, Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "vthumb"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "thumb"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "mp4"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "gif"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    :cond_7
    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    :cond_8
    new-instance v11, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_17

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    iput-boolean v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v18, :cond_a

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_19

    :cond_a
    iput-object v11, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    new-instance v19, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_b
    :goto_4
    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "vthumb://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, ":"

    const/16 v21, 0x9

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-ltz v13, :cond_4

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    new-instance v11, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "q_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_10

    const/4 v11, 0x0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_11

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_11

    const/4 v9, 0x0

    :cond_11
    if-nez v9, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-nez v15, :cond_13

    new-instance v15, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    move-object/from16 v0, v19

    #setter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->fileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v15, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3402(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->filter:Ljava/lang/String;
    invoke-static {v15, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3502(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-static {v15}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$2908(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$shouldGenerateQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getFileType()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    #calls: Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    invoke-static {v0, v1, v9, v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$3700(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_16

    new-instance v11, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    new-instance v11, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v17, v0

    check-cast v17, Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    move-object/from16 v19, v0

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    :cond_1a
    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    goto/16 :goto_4

    :cond_1b
    const/16 v19, 0x0

    goto :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    new-instance v19, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "_temp.jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iput-object v11, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    new-instance v19, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v14, v2}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V
    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;Z)V

    goto/16 :goto_4
.end method
