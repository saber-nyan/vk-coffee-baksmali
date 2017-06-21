.class Lcom/vkcoffee/android/fragments/news/ViewServer$NoopViewServer;
.super Lcom/vkcoffee/android/fragments/news/ViewServer;
.source "ViewServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoopViewServer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/news/ViewServer;-><init>(Lcom/vkcoffee/android/fragments/news/ViewServer$1;)V

    .line 506
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/news/ViewServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/news/ViewServer$1;

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/ViewServer$NoopViewServer;-><init>()V

    return-void
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 525
    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 533
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 529
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 537
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 541
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 545
    return-void
.end method

.method public start()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method
