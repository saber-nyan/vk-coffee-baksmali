.class Lcom/vkcoffee/android/GlobalMethodsCoffee$1;
.super Ljava/lang/Object;
.source "GlobalMethodsCoffee.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/GlobalMethodsCoffee;->clearMessagesCache(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/GlobalMethodsCoffee$1;->val$activity:Landroid/app/Activity;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 371
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->reset()V

    .line 372
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->resetCache()V

    .line 373
    iget-object v0, p0, Lcom/vkcoffee/android/GlobalMethodsCoffee$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/vkcoffee/android/GlobalMethodsCoffee$1$1;

    iget-object v2, p0, Lcom/vkcoffee/android/GlobalMethodsCoffee$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee$1$1;-><init>(Lcom/vkcoffee/android/GlobalMethodsCoffee$1;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method
