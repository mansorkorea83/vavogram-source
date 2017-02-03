.class public Lorg/telegram/messenger/MessageObject$TextLayoutBlock;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLayoutBlock"
.end annotation


# instance fields
.field public charactersOffset:I

.field public height:I

.field public textLayout:Landroid/text/StaticLayout;

.field public textXOffset:F

.field public textYOffset:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
