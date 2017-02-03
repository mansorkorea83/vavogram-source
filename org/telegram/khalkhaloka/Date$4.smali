.class Lorg/telegram/khalkhaloka/Date$4;
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

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Date$4;->this$0:Lorg/telegram/khalkhaloka/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setShowTimeAgo(Ljava/lang/Boolean;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setDatePersian(Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setShowTimeAgo(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
