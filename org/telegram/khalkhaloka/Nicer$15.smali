.class Lorg/telegram/khalkhaloka/Nicer$15;
.super Ljava/lang/Object;
.source "Nicer.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Nicer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Nicer;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Nicer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Nicer$15;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {v1}, Lorg/telegram/hoshyar/Setting/Setting;->setWrite(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$15;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_01:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$15;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_02:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$15;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_03:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$15;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_04:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$15;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_05:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Nicer$15;->this$0:Lorg/telegram/khalkhaloka/Nicer;

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Nicer;->ch_06:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
