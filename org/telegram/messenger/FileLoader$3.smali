.class Lorg/telegram/messenger/FileLoader$3;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$encrypted:Z

.field final synthetic val$estimatedSize:I

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$small:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    iput p4, p0, Lorg/telegram/messenger/FileLoader$3;->val$estimatedSize:I

    iput-boolean p5, p0, Lorg/telegram/messenger/FileLoader$3;->val$small:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/FileLoader$3;->val$estimatedSize:I

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v2, Lorg/telegram/messenger/FileUploadOperation;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    invoke-direct {v2, v3, v4, v0}, Lorg/telegram/messenger/FileUploadOperation;-><init>(Ljava/lang/String;ZI)V

    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v3, Lorg/telegram/messenger/FileLoader$3$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/FileLoader$3$1;-><init>(Lorg/telegram/messenger/FileLoader$3;)V

    iput-object v3, v2, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoader$3;->val$small:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$500(Lorg/telegram/messenger/FileLoader;)I

    move-result v3

    if-ge v3, v5, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$508(Lorg/telegram/messenger/FileLoader;)I

    invoke-virtual {v2}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$600(Lorg/telegram/messenger/FileLoader;)I

    move-result v3

    if-ge v3, v5, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$608(Lorg/telegram/messenger/FileLoader;)I

    invoke-virtual {v2}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    #getter for: Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->access$300(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
