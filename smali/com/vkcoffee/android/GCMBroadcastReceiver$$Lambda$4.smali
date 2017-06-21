.class final synthetic Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$4;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$4;->arg$2:Landroid/content/Intent;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Landroid/content/Intent;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$4;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$4;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$4;->arg$2:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->lambda$null$627(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;)V

    return-void
.end method
