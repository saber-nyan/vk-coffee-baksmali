.class Lcom/vkcoffee/android/ui/WriteBar$11;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/WriteBar;->openAttachMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/WriteBar;

.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 468
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/WriteBar;->access$300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/WriteBar;->access$400(Lcom/vkcoffee/android/ui/WriteBar;)I

    move-result v5

    if-lt v4, v5, :cond_0

    const-wide/16 v4, 0x4

    cmp-long v4, p4, v4

    if-gez v4, :cond_0

    .line 469
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080084

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/WriteBar;->access$400(Lcom/vkcoffee/android/ui/WriteBar;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 552
    :goto_0
    return-void

    .line 472
    :cond_0
    long-to-int v4, p4

    packed-switch v4, :pswitch_data_0

    .line 551
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->val$dlg:Landroid/app/Dialog;

    invoke-static {v4}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    goto :goto_0

    .line 474
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "limit"

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/WriteBar;->access$400(Lcom/vkcoffee/android/ui/WriteBar;)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/WriteBar;->access$300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/WriteBar;->access$800(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v4

    const/16 v5, 0x2711

    invoke-virtual {v4, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 480
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "select"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 482
    new-instance v4, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v5, Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {v4, v5, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/WriteBar;->access$800(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v5

    const/16 v6, 0x2713

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    goto :goto_1

    .line 487
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_2
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    .line 488
    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080063

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0802bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    new-instance v6, Lcom/vkcoffee/android/ui/WriteBar$11$1;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/ui/WriteBar$11$1;-><init>(Lcom/vkcoffee/android/ui/WriteBar$11;)V

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080583

    .line 510
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 511
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 518
    :pswitch_3
    new-instance v4, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;

    invoke-direct {v4, v8}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;-><init>(Z)V

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/WriteBar;->access$400(Lcom/vkcoffee/android/ui/WriteBar;)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/WriteBar;->access$300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->setLimit(I)Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/WriteBar;->access$800(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v5

    const/16 v6, 0x2714

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->forResult(Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 523
    :pswitch_4
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "location_providers_allowed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "locationProviders":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 525
    :cond_1
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080295

    .line 526
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080294

    .line 527
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08032a

    new-instance v6, Lcom/vkcoffee/android/ui/WriteBar$11$2;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/ui/WriteBar$11$2;-><init>(Lcom/vkcoffee/android/ui/WriteBar$11;)V

    .line 528
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800b7

    const/4 v6, 0x0

    .line 535
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 536
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 542
    .end local v2    # "locationProviders":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 543
    .local v3, "x":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080165

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 541
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v2    # "locationProviders":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;

    invoke-direct {v4}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;-><init>()V

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/WriteBar;->access$800(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v5

    const/16 v6, 0x2715

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->forResult(Landroid/app/Fragment;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 547
    .end local v2    # "locationProviders":Ljava/lang/String;
    :pswitch_5
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$11;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/WriteBar;->access$1600(Lcom/vkcoffee/android/ui/WriteBar;)V

    goto/16 :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
