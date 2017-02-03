.class Lorg/telegram/messenger/FileLoadOperation$5;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;

.field final synthetic val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$5;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation$5;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$5;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    #setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$802(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$5;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$5;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    #calls: Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/FileLoadOperation;->access$1200(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
