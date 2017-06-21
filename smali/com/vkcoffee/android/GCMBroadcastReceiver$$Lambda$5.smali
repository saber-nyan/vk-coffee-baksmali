.class final synthetic Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:I

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Landroid/content/Context;


# direct methods
.method private constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;->arg$1:I

    iput-object p2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;->arg$3:Landroid/content/Context;

    return-void
.end method

.method public static lambdaFactory$(ILjava/lang/String;Landroid/content/Context;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 3

    iget v0, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;->arg$1:I

    iget-object v1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;->arg$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->lambda$null$628(ILjava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
