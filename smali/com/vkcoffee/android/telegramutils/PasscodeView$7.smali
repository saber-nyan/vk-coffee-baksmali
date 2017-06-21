.class Lcom/vkcoffee/android/telegramutils/PasscodeView$7;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/telegramutils/PasscodeView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/telegramutils/PasscodeView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 698
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 733
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->lenght()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 734
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$0(Lcom/vkcoffee/android/telegramutils/PasscodeView;Z)V

    .line 736
    :cond_0
    return-void

    .line 700
    :pswitch_0
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :pswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :pswitch_2
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :pswitch_3
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :pswitch_4
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :pswitch_5
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :pswitch_6
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :pswitch_7
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :pswitch_8
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :pswitch_9
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 730
    :pswitch_a
    iget-object v1, p0, Lcom/vkcoffee/android/telegramutils/PasscodeView$7;->this$0:Lcom/vkcoffee/android/telegramutils/PasscodeView;

    invoke-static {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView;->access$2(Lcom/vkcoffee/android/telegramutils/PasscodeView;)Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/telegramutils/PasscodeView$AnimatingTextView;->eraseLastCharacter()V

    goto/16 :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
