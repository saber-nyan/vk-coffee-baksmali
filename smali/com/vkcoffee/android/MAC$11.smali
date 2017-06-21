.class Lcom/vkcoffee/android/MAC$11;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MAC;->loginAcc(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialoglayout:Landroid/view/View;

.field private final synthetic val$txt2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MAC$11;->val$dialoglayout:Landroid/view/View;

    iput-object p2, p0, Lcom/vkcoffee/android/MAC$11;->val$txt2:Landroid/widget/TextView;

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$11;->val$dialoglayout:Landroid/view/View;

    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 730
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$11;->val$txt2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    return-void
.end method
