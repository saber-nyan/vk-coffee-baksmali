.class Lcom/vkcoffee/android/Platform$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/Platform;->ModalPlatform(Landroid/app/Activity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$numberPicker:Landroid/widget/NumberPicker;

.field private final synthetic val$wall:Z


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;Ljava/util/ArrayList;ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/Platform$1;->val$numberPicker:Landroid/widget/NumberPicker;

    iput-object p2, p0, Lcom/vkcoffee/android/Platform$1;->val$acts:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/vkcoffee/android/Platform$1;->val$wall:Z

    iput-object p4, p0, Lcom/vkcoffee/android/Platform$1;->val$activity:Landroid/app/Activity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v2, p0, Lcom/vkcoffee/android/Platform$1;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    .line 196
    iget-object v2, p0, Lcom/vkcoffee/android/Platform$1;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 199
    .local v1, "choice":I
    sget v2, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 200
    sget v2, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    .line 223
    :cond_0
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/Platform;->access$1()I

    move-result v2

    sget v3, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    if-ne v2, v3, :cond_b

    .line 224
    invoke-static {}, Lcom/vkcoffee/android/Platform;->access$1()I

    move-result v2

    iget-boolean v3, p0, Lcom/vkcoffee/android/Platform$1;->val$wall:Z

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Platform;->setCurrentPlatform(IZ)V

    .line 225
    invoke-static {}, Lcom/vkcoffee/android/Platform;->successPlatformPosting()V

    .line 226
    iget-object v2, p0, Lcom/vkcoffee/android/Platform$1;->val$activity:Landroid/app/Activity;

    const-string v3, "\u0412\u044b\u0431\u0440\u0430\u043d\u043e \u0432\u0435\u0434\u0440\u043e ^_^"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 235
    :goto_1
    return-void

    .line 201
    :cond_1
    sget v2, Lcom/vkcoffee/android/PlatformData;->IPHONE:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 202
    sget v2, Lcom/vkcoffee/android/PlatformData;->IPHONE:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto :goto_0

    .line 203
    :cond_2
    sget v2, Lcom/vkcoffee/android/PlatformData;->IPAD:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 204
    sget v2, Lcom/vkcoffee/android/PlatformData;->IPAD:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto :goto_0

    .line 205
    :cond_3
    sget v2, Lcom/vkcoffee/android/PlatformData;->SYMBIAN:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 206
    sget v2, Lcom/vkcoffee/android/PlatformData;->SYMBIAN:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto :goto_0

    .line 207
    :cond_4
    sget v2, Lcom/vkcoffee/android/PlatformData;->WIN_PC:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 208
    sget v2, Lcom/vkcoffee/android/PlatformData;->WIN_PC:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto :goto_0

    .line 209
    :cond_5
    sget v2, Lcom/vkcoffee/android/PlatformData;->WIN_PH:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 210
    sget v2, Lcom/vkcoffee/android/PlatformData;->WIN_PH:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto :goto_0

    .line 211
    :cond_6
    sget v2, Lcom/vkcoffee/android/PlatformData;->BLACK_BERRY:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 212
    sget v2, Lcom/vkcoffee/android/PlatformData;->BLACK_BERRY:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto/16 :goto_0

    .line 213
    :cond_7
    sget v2, Lcom/vkcoffee/android/PlatformData;->SNAPSTER:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 214
    sget v2, Lcom/vkcoffee/android/PlatformData;->SNAPSTER:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto/16 :goto_0

    .line 215
    :cond_8
    sget v2, Lcom/vkcoffee/android/PlatformData;->KATE:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 216
    sget v2, Lcom/vkcoffee/android/PlatformData;->KATE:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto/16 :goto_0

    .line 217
    :cond_9
    sget v2, Lcom/vkcoffee/android/PlatformData;->LYNT:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 218
    sget v2, Lcom/vkcoffee/android/PlatformData;->LYNT:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto/16 :goto_0

    .line 219
    :cond_a
    sget v2, Lcom/vkcoffee/android/PlatformData;->API_CONSOLE:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 220
    sget v2, Lcom/vkcoffee/android/PlatformData;->API_CONSOLE:I

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->access$0(I)V

    goto/16 :goto_0

    .line 229
    :cond_b
    invoke-static {}, Lcom/vkcoffee/android/Platform;->access$1()I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/PlatformData;->sidIsEmpty(I)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lcom/vkcoffee/android/Platform;->access$1()I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/PlatformData;->secretIsEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 230
    :cond_c
    iget-object v2, p0, Lcom/vkcoffee/android/Platform$1;->val$activity:Landroid/app/Activity;

    const-string v3, "\u041d\u043e\u0432\u0430\u044f \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u044f"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 231
    iget-object v2, p0, Lcom/vkcoffee/android/Platform$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/vkcoffee/android/Platform;->access$1()I

    move-result v3

    iget-boolean v4, p0, Lcom/vkcoffee/android/Platform$1;->val$wall:Z

    invoke-static {v2, v3, v4}, Lcom/vkcoffee/android/Platform;->access$2(Landroid/app/Activity;IZ)V

    goto/16 :goto_1

    .line 233
    :cond_d
    iget-object v2, p0, Lcom/vkcoffee/android/Platform$1;->val$activity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/vkcoffee/android/Platform$1;->val$wall:Z

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Platform;->goCheck(Landroid/app/Activity;Z)V

    goto/16 :goto_1
.end method
