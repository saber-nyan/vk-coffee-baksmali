.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;
.super Landroid/content/BroadcastReceiver;
.source "AttachmentsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    sget-boolean v8, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v8, :cond_0

    .line 108
    const-string/jumbo v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "upload state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "id"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    const-string/jumbo v8, "com.vkcoffee.android.UPLOAD_PROGRESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 111
    const-string/jumbo v8, "id"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 112
    .local v2, "id":I
    const/4 v1, 0x0

    .line 113
    .local v1, "i":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$300(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 114
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v8, :cond_2

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    if-eq v8, v2, :cond_4

    :cond_2
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-eqz v8, :cond_3

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    if-eq v8, v2, :cond_4

    :cond_3
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v8, :cond_d

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    if-ne v8, v2, :cond_d

    .line 115
    :cond_4
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v8, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 116
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_5

    .line 117
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$400(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 120
    :cond_5
    if-nez v6, :cond_6

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    goto :goto_0

    .line 124
    :cond_6
    const v8, 0x7f100149

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 127
    const v8, 0x7f100149

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    const-string/jumbo v9, "done"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 128
    const v8, 0x7f100149

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    const-string/jumbo v9, "total"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 129
    sget-boolean v8, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v8, :cond_7

    .line 130
    const-string/jumbo v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Upload "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "done"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "total"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    const-string/jumbo v8, "com.vkcoffee.android.UPLOAD_DONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 138
    const-string/jumbo v8, "id"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .restart local v2    # "id":I
    const/4 v1, 0x0

    .line 140
    .restart local v1    # "i":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$300(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 141
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v8, :cond_9

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    if-eq v8, v2, :cond_b

    :cond_9
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-eqz v8, :cond_a

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    if-eq v8, v2, :cond_b

    :cond_a
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v8, :cond_1b

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    if-ne v8, v2, :cond_1b

    .line 144
    :cond_b
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v8, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 145
    .restart local v6    # "v":Landroid/view/View;
    if-nez v6, :cond_c

    .line 146
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$400(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 148
    :cond_c
    if-nez v6, :cond_e

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_1

    .line 134
    .end local v6    # "v":Landroid/view/View;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 135
    goto/16 :goto_0

    .line 152
    .restart local v6    # "v":Landroid/view/View;
    :cond_e
    const v8, 0x7f100149

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 155
    const v8, 0x7f100149

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 156
    .local v5, "pd":Landroid/graphics/drawable/Drawable;
    instance-of v8, v5, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    if-eqz v8, :cond_19

    .line 157
    check-cast v5, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    .end local v5    # "pd":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->playDoneAnimation()V

    .line 158
    move-object v7, v6

    .line 159
    .local v7, "vv":Landroid/view/View;
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    new-instance v9, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2$1;

    invoke-direct {v9, p0, v7}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2$1;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;Landroid/view/View;)V

    const-wide/16 v10, 0x28a

    invoke-virtual {v8, v9, v10, v11}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    .end local v7    # "vv":Landroid/view/View;
    :goto_2
    const-string/jumbo v8, "result"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 169
    .local v4, "o":Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 170
    .local v3, "na":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v8, v4, Lcom/vkcoffee/android/attachments/Attachment;

    if-eqz v8, :cond_1a

    move-object v3, v4

    .line 171
    check-cast v3, Lcom/vkcoffee/android/attachments/Attachment;

    .line 175
    .end local v4    # "o":Landroid/os/Parcelable;
    :cond_f
    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$300(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-boolean v8, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v8, :cond_10

    .line 178
    const-string/jumbo v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Upload "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " done: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "result"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v3    # "na":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v6    # "v":Landroid/view/View;
    :cond_10
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$500(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 185
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$500(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    move-result-object v8

    invoke-interface {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;->onAllUploadsDone()V

    .line 188
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_11
    const-string/jumbo v8, "com.vkcoffee.android.UPLOAD_FAILED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 189
    const-string/jumbo v8, "id"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 190
    .restart local v2    # "id":I
    const/4 v1, 0x0

    .line 191
    .restart local v1    # "i":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$300(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 192
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v8, :cond_13

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    if-eq v8, v2, :cond_15

    :cond_13
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-eqz v8, :cond_14

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    if-eq v8, v2, :cond_15

    :cond_14
    instance-of v8, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v8, :cond_1c

    move-object v8, v0

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    if-ne v8, v2, :cond_1c

    .line 193
    :cond_15
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$500(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 194
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$500(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    move-result-object v8

    invoke-interface {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;->onUploadFailed()V

    .line 196
    :cond_16
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v8, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 197
    .restart local v6    # "v":Landroid/view/View;
    if-nez v6, :cond_17

    .line 198
    iget-object v8, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->access$400(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 200
    :cond_17
    if-eqz v6, :cond_12

    .line 203
    const v8, 0x7f100149

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 206
    const v8, 0x7f100149

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 207
    const v8, 0x7f10014a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 213
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v6    # "v":Landroid/view/View;
    :cond_18
    return-void

    .line 166
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v1    # "i":I
    .restart local v2    # "id":I
    .restart local v5    # "pd":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "v":Landroid/view/View;
    :cond_19
    const v8, 0x7f100149

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 172
    .end local v5    # "pd":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "na":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v4    # "o":Landroid/os/Parcelable;
    :cond_1a
    instance-of v8, v4, Lcom/vkcoffee/android/api/VideoFile;

    if-eqz v8, :cond_f

    .line 173
    new-instance v3, Lcom/vkcoffee/android/attachments/VideoAttachment;

    .end local v3    # "na":Lcom/vkcoffee/android/attachments/Attachment;
    check-cast v4, Lcom/vkcoffee/android/api/VideoFile;

    .end local v4    # "o":Landroid/os/Parcelable;
    invoke-direct {v3, v4}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    .restart local v3    # "na":Lcom/vkcoffee/android/attachments/Attachment;
    goto/16 :goto_3

    .line 182
    .end local v3    # "na":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v6    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 183
    goto/16 :goto_1

    .line 210
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 211
    goto/16 :goto_4
.end method
