.class final synthetic Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/Message;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$2;->arg$1:Lcom/vkcoffee/android/Message;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/Message;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$2;-><init>(Lcom/vkcoffee/android/Message;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$2;->arg$1:Lcom/vkcoffee/android/Message;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->lambda$showMessageNotification$637(Lcom/vkcoffee/android/Message;Ljava/util/ArrayList;)V

    return-void
.end method
