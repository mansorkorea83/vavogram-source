.class Lorg/telegram/khalkhaloka/Date$2;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Date;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Date;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Date;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Date$2;->this$0:Lorg/telegram/khalkhaloka/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setConSticker(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setConSticker(I)V

    goto :goto_0
.end method
