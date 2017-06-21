.class Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$2;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;


# direct methods
.method constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    .prologue
    .line 664
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$2;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$2;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->minimizeHeader()V

    .line 668
    return-void
.end method
