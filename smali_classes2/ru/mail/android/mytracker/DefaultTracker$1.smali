.class Lru/mail/android/mytracker/DefaultTracker$1;
.super Ljava/lang/Object;
.source "DefaultTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/mail/android/mytracker/DefaultTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/mail/android/mytracker/DefaultTracker;


# direct methods
.method constructor <init>(Lru/mail/android/mytracker/DefaultTracker;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lru/mail/android/mytracker/DefaultTracker$1;->this$0:Lru/mail/android/mytracker/DefaultTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lru/mail/android/mytracker/DefaultTracker$1;->this$0:Lru/mail/android/mytracker/DefaultTracker;

    invoke-static {v0}, Lru/mail/android/mytracker/DefaultTracker;->access$000(Lru/mail/android/mytracker/DefaultTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lru/mail/android/mytracker/DefaultTracker$1;->this$0:Lru/mail/android/mytracker/DefaultTracker;

    invoke-static {v0}, Lru/mail/android/mytracker/DefaultTracker;->access$100(Lru/mail/android/mytracker/DefaultTracker;)V

    .line 65
    :cond_0
    return-void
.end method
