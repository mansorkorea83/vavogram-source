.class Lorg/telegram/hoshyar/Activity/SelectColorActivity$1;
.super Ljava/lang/Object;
.source "SelectColorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/hoshyar/Activity/SelectColorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/hoshyar/Activity/SelectColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/hoshyar/Activity/SelectColorActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/hoshyar/Activity/SelectColorActivity$1;->this$0:Lorg/telegram/hoshyar/Activity/SelectColorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->LoadThemes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/hoshyar/Models/Theme;

    invoke-static {v0}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->ChangeTheme(Lorg/telegram/hoshyar/Models/Theme;)V

    iget-object v0, p0, Lorg/telegram/hoshyar/Activity/SelectColorActivity$1;->this$0:Lorg/telegram/hoshyar/Activity/SelectColorActivity;

    invoke-virtual {v0}, Lorg/telegram/hoshyar/Activity/SelectColorActivity;->finish()V

    return-void
.end method
