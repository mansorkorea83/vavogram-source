.class Lnet/hockeyapp/android/metrics/MetricsManager$1;
.super Landroid/os/AsyncTask;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/metrics/MetricsManager;->trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/metrics/MetricsManager;

.field final synthetic val$sessionState:Lnet/hockeyapp/android/metrics/model/SessionState;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/model/SessionState;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/MetricsManager$1;->this$0:Lnet/hockeyapp/android/metrics/MetricsManager;

    iput-object p2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$1;->val$sessionState:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/MetricsManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    new-instance v1, Lnet/hockeyapp/android/metrics/model/SessionStateData;

    invoke-direct {v1}, Lnet/hockeyapp/android/metrics/model/SessionStateData;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$1;->val$sessionState:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/metrics/model/SessionStateData;->setState(Lnet/hockeyapp/android/metrics/model/SessionState;)V

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/MetricsManager$1;->this$0:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {v2, v1}, Lnet/hockeyapp/android/metrics/MetricsManager;->createData(Lnet/hockeyapp/android/metrics/model/TelemetryData;)Lnet/hockeyapp/android/metrics/model/Data;

    move-result-object v0

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->access$100()Lnet/hockeyapp/android/metrics/Channel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/hockeyapp/android/metrics/Channel;->enqueueData(Lnet/hockeyapp/android/metrics/model/Base;)V

    const/4 v2, 0x0

    return-object v2
.end method
