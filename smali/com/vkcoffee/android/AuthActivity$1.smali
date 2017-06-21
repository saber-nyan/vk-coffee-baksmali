.class Lcom/vkcoffee/android/AuthActivity$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$txt2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AuthActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$1;->this$0:Lcom/vkcoffee/android/AuthActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/AuthActivity$1;->val$txt2:Landroid/widget/TextView;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$1;->this$0:Lcom/vkcoffee/android/AuthActivity;

    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$1;->val$txt2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
