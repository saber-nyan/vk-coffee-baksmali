.class Lcom/vkcoffee/android/ui/SearchViewWrapper$2;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 102
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$2;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$2;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->clear()V

    .line 106
    return-void
.end method
