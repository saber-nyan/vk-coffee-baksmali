.class Lcom/vkcoffee/android/AuthActivity$3;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AuthActivity;

.field private final synthetic val$facebookDivider:Landroid/view/View;

.field private final synthetic val$facebookView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AuthActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$3;->this$0:Lcom/vkcoffee/android/AuthActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/AuthActivity$3;->val$facebookView:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/AuthActivity$3;->val$facebookDivider:Landroid/view/View;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardStateChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 109
    const/16 v1, 0x8

    .line 110
    .local v1, "i2":I
    iget-object v2, p0, Lcom/vkcoffee/android/AuthActivity$3;->val$facebookView:Landroid/view/View;

    .line 111
    .local v2, "view":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 112
    const/16 v0, 0x8

    .line 116
    .local v0, "i":I
    :goto_0
    invoke-static {v2, v0}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 117
    iget-object v3, p0, Lcom/vkcoffee/android/AuthActivity$3;->val$facebookDivider:Landroid/view/View;

    .line 118
    .local v3, "view2":Landroid/view/View;
    if-nez p1, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 121
    :cond_0
    invoke-static {v3, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 122
    return-void

    .line 114
    .end local v0    # "i":I
    .end local v3    # "view2":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    goto :goto_0
.end method
