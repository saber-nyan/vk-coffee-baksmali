.class final synthetic Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:I

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;->arg$1:I

    iput-object p2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;->arg$2:Landroid/content/Context;

    iput p3, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(ILandroid/content/Context;I)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;-><init>(ILandroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 3

    iget v0, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;->arg$1:I

    iget-object v1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;->arg$2:Landroid/content/Context;

    iget v2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;->arg$3:I

    invoke-static {v0, v1, v2, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->lambda$null$631(ILandroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method
