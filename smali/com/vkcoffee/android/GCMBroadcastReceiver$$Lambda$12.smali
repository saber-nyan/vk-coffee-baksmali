.class final synthetic Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Landroid/content/Intent;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Z

.field private final arg$5:Z

.field private final arg$6:I

.field private final arg$7:Ljava/lang/String;

.field private final arg$8:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$2:Landroid/content/Intent;

    iput-object p3, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$3:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$4:Z

    iput-boolean p5, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$5:Z

    iput p6, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$6:I

    iput-object p7, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$7:Ljava/lang/String;

    iput-object p8, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$8:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 9

    new-instance v0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 9

    iget-object v0, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$2:Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$3:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$4:Z

    iget-boolean v4, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$5:Z

    iget v5, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$6:I

    iget-object v6, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$7:Ljava/lang/String;

    iget-object v7, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->arg$8:Ljava/lang/String;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->lambda$null$635(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
