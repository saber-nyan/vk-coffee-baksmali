.class final synthetic Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Landroid/os/Bundle;

.field private final arg$2:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$9;->arg$1:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$9;->arg$2:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(Landroid/os/Bundle;Landroid/content/Context;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$9;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$9;-><init>(Landroid/os/Bundle;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$9;->arg$1:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$9;->arg$2:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->lambda$null$632(Landroid/os/Bundle;Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
