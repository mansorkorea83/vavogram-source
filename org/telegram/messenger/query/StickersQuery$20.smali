.class final Lorg/telegram/messenger/query/StickersQuery$20;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hash:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/query/StickersQuery$20;->val$type:I

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$20;->val$hash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$20$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$20$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$20;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
