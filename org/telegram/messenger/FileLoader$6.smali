.class Lorg/telegram/messenger/FileLoader$6;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$cacheOnly:Z

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$force:Z

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$locationExt:Ljava/lang/String;

.field final synthetic val$locationSize:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;ZIZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-boolean p5, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    iput p6, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    iput-boolean p7, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v2, 0x0

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v11, "-2147483648"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v7, :cond_6

    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    move-object v8, v9

    const/4 v10, 0x4

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_9

    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iget v13, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    invoke-direct {v7, v11, v12, v13}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V

    const/4 v10, 0x0

    :cond_7
    :goto_3
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheOnly:Z

    if-nez v11, :cond_8

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v11, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    :cond_8
    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->setPaths(Ljava/io/File;Ljava/io/File;)V

    move-object v3, v2

    move v4, v10

    new-instance v1, Lorg/telegram/messenger/FileLoader$6$1;

    invoke-direct {v1, p0, v3, v4}, Lorg/telegram/messenger/FileLoader$6$1;-><init>(Lorg/telegram/messenger/FileLoader$6;Ljava/lang/String;I)V

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/FileLoadOperation;->setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_c

    const/4 v6, 0x3

    :goto_4
    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_d

    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1108(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    :cond_9
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_7

    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v10, 0x1

    goto :goto_3

    :cond_a
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v10, 0x2

    goto :goto_3

    :cond_b
    const/4 v10, 0x3

    goto :goto_3

    :cond_c
    const/4 v6, 0x1

    goto :goto_4

    :cond_d
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_e

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_f
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_12

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1300(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_10

    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1308(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    :cond_10
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_11

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_11
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_12
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1500(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_13

    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1508(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_1

    :cond_13
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_14

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
