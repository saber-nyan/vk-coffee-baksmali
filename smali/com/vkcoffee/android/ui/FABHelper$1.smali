.class Lcom/vkcoffee/android/ui/FABHelper$1;
.super Ljava/lang/Object;
.source "FABHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/FABHelper;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/FABHelper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/FABHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/FABHelper;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FABHelper$1;->this$0:Lcom/vkcoffee/android/ui/FABHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$1;->this$0:Lcom/vkcoffee/android/ui/FABHelper;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/FABHelper;->access$500(Lcom/vkcoffee/android/ui/FABHelper;)Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setVisibility(I)V

    .line 179
    return-void
.end method
