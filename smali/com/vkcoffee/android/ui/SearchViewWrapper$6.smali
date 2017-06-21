.class Lcom/vkcoffee/android/ui/SearchViewWrapper$6;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$6;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 176
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$6;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 178
    const/4 v0, 0x1

    .line 180
    :cond_0
    return v0
.end method
