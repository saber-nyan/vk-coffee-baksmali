.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->selectBirthDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 483
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v1, p2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$22(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 484
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$21(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 485
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v1, p4}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$23(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "date":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$25(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v1

    if-lez v1, :cond_0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$25(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$16;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100378

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method
