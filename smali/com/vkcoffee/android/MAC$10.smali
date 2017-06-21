.class Lcom/vkcoffee/android/MAC$10;
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
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$dialoglayout:Landroid/view/View;

.field private final synthetic val$editMode:Z

.field private final synthetic val$l:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MAC$10;->val$l:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkcoffee/android/MAC$10;->val$dialoglayout:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/MAC$10;->val$activity:Landroid/app/Activity;

    iput-boolean p4, p0, Lcom/vkcoffee/android/MAC$10;->val$editMode:Z

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 708
    iget-object v2, p0, Lcom/vkcoffee/android/MAC$10;->val$l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/MAC$10;->val$dialoglayout:Landroid/view/View;

    const v3, 0x7f10019c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "login":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/MAC$10;->val$dialoglayout:Landroid/view/View;

    const v3, 0x7f10019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "pass":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/MAC$10;->val$activity:Landroid/app/Activity;

    const-string v3, "\u0417\u0430\u043f\u043e\u043b\u043d\u0438\u0442\u0435 \u0432\u0441\u0435 \u043f\u043e\u043b\u044f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 721
    :goto_1
    return-void

    .line 708
    .end local v0    # "login":Ljava/lang/String;
    .end local v1    # "pass":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$10;->val$l:Ljava/lang/String;

    goto :goto_0

    .line 714
    .restart local v0    # "login":Ljava/lang/String;
    .restart local v1    # "pass":Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/vkcoffee/android/MAC$10;->val$editMode:Z

    if-eqz v2, :cond_3

    .line 715
    iget-object v2, p0, Lcom/vkcoffee/android/MAC$10;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/vkcoffee/android/MAC;->access$7(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 717
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/MAC$10;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/vkcoffee/android/MAC;->access$8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
