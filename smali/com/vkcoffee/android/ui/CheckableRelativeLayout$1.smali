.class Lcom/vkcoffee/android/ui/CheckableRelativeLayout$1;
.super Ljava/lang/Object;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/CheckableRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/CheckableRelativeLayout;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/CheckableRelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/CheckableRelativeLayout;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$1;->this$0:Lcom/vkcoffee/android/ui/CheckableRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$1;->this$0:Lcom/vkcoffee/android/ui/CheckableRelativeLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->access$000(Lcom/vkcoffee/android/ui/CheckableRelativeLayout;)Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$1;->this$0:Lcom/vkcoffee/android/ui/CheckableRelativeLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->access$000(Lcom/vkcoffee/android/ui/CheckableRelativeLayout;)Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$1;->this$0:Lcom/vkcoffee/android/ui/CheckableRelativeLayout;

    invoke-interface {v0, v1, p2}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/View;Z)V

    .line 26
    :cond_0
    return-void
.end method
