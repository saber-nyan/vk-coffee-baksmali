.class Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$1;
.super Lcom/vkcoffee/android/ui/ListDirectionDetector;
.source "FABHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$1;->this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ListDirectionDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollDown()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$1;->this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->show()V

    .line 271
    return-void
.end method

.method public onScrollUp()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$1;->this$0:Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->hide()V

    .line 276
    return-void
.end method
