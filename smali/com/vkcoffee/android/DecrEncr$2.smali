.class Lcom/vkcoffee/android/DecrEncr$2;
.super Ljava/lang/Object;
.source "DecrEncr.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/DecrEncr;->pinCodeMessage(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$pass:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/DecrEncr$2;->val$pass:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/vkcoffee/android/DecrEncr$2;->val$activity:Landroid/app/Activity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/vkcoffee/android/DecrEncr$2;->val$pass:Landroid/widget/EditText;

    new-instance v1, Lcom/vkcoffee/android/DecrEncr$2$1;

    iget-object v2, p0, Lcom/vkcoffee/android/DecrEncr$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkcoffee/android/DecrEncr$2;->val$pass:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkcoffee/android/DecrEncr$2$1;-><init>(Lcom/vkcoffee/android/DecrEncr$2;Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method
