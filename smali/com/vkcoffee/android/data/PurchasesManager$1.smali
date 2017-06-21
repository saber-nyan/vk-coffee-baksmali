.class final Lcom/vkcoffee/android/data/PurchasesManager$1;
.super Ljava/lang/Object;
.source "PurchasesManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/PurchasesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 69
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 70
    :try_start_0
    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$002(Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$202(Z)Z

    .line 72
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$002(Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 65
    return-void
.end method
