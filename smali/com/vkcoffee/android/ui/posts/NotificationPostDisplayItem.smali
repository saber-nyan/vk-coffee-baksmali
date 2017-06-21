.class public Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "NotificationPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;
    }
.end annotation


# static fields
.field static final BUTTONS:[I

.field static final BUTTON_CELL:I = 0x0

.field static final BUTTON_NULL:I

.field static final BUTTON_PRIMARY:I = 0x1

.field static final BUTTON_SECONDARY:I = 0x2

.field static final HEADERS:[I

.field private static final LAYOUT_APP:I = 0x0

.field private static final LAYOUT_BANNER:I = 0x2

.field private static final LAYOUT_INFO:I = 0x1


# instance fields
.field final userNotification:Lcom/vkcoffee/android/data/UserNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->HEADERS:[I

    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->BUTTONS:[I

    .line 193
    sget-object v0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->BUTTONS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->BUTTON_NULL:I

    return-void

    .line 189
    :array_0
    .array-data 4
        0x7f030102
        0x7f030103
        0x7f030104
    .end array-data

    .line 190
    :array_1
    .array-data 4
        0x7f0300fe
        0x7f0300ff
        0x7f030100
        0x7f030101
    .end array-data
.end method

.method public constructor <init>(Lcom/vkcoffee/android/data/UserNotification;)V
    .locals 2
    .param p1, "userNotification"    # Lcom/vkcoffee/android/data/UserNotification;

    .prologue
    .line 33
    iget v0, p1, Lcom/vkcoffee/android/data/UserNotification;->id:I

    const v1, 0x77359401

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->userNotification:Lcom/vkcoffee/android/data/UserNotification;

    .line 35
    return-void
.end method

.method public static createView(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "viewType"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;-><init>(Landroid/content/Context;I)V

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method static createViewType(IIZ)I
    .locals 2
    .param p0, "style"    # I
    .param p1, "buttonStyle"    # I
    .param p2, "hasUsers"    # Z

    .prologue
    .line 203
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    mul-int/lit8 v1, p0, 0x64

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getButtonStyle(I)I
    .locals 1
    .param p0, "viewType"    # I

    .prologue
    .line 249
    add-int/lit8 v0, p0, -0x11

    div-int/lit8 v0, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    return v0
.end method

.method static getButtonStyle(Lcom/vkcoffee/android/data/UserNotification;)I
    .locals 6
    .param p0, "notification"    # Lcom/vkcoffee/android/data/UserNotification;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    iget-object v4, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonStyle:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 243
    sget v0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->BUTTON_NULL:I

    :goto_1
    :pswitch_0
    return v0

    .line 235
    :sswitch_0
    const-string/jumbo v5, "cell"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "secondary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 239
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 241
    goto :goto_1

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x30bb8e8c -> :sswitch_2
        -0x12c2f1fe -> :sswitch_1
        0x2e8962 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static getStyle(I)I
    .locals 1
    .param p0, "viewType"    # I

    .prologue
    .line 230
    add-int/lit8 v0, p0, -0x11

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method static getStyle(Lcom/vkcoffee/android/data/UserNotification;)I
    .locals 6
    .param p0, "notification"    # Lcom/vkcoffee/android/data/UserNotification;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 211
    iget-object v3, p0, Lcom/vkcoffee/android/data/UserNotification;->layout:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 222
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "error: Unknown newsfeed layout type"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 223
    :goto_1
    :pswitch_0
    return v0

    .line 211
    :sswitch_0
    const-string/jumbo v5, "app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "banner"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 215
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 217
    goto :goto_1

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_1
        0x17a21 -> :sswitch_0
        0x3164ae -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static hasUsers(I)Z
    .locals 1
    .param p0, "viewType"    # I

    .prologue
    .line 257
    add-int/lit8 v0, p0, -0x11

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasUsers(Lcom/vkcoffee/android/data/UserNotification;)Z
    .locals 1
    .param p0, "notification"    # Lcom/vkcoffee/android/data/UserNotification;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotificationViewType(I)Z
    .locals 3
    .param p0, "viewType"    # I

    .prologue
    .line 199
    invoke-static {p0}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->getStyle(I)I

    move-result v0

    invoke-static {p0}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->getButtonStyle(I)I

    move-result v1

    invoke-static {p0}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->hasUsers(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->createViewType(IIZ)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->userNotification:Lcom/vkcoffee/android/data/UserNotification;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem$ViewHolder;->bind(Lcom/vkcoffee/android/data/UserNotification;)V

    .line 54
    return-void
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->userNotification:Lcom/vkcoffee/android/data/UserNotification;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->getStyle(Lcom/vkcoffee/android/data/UserNotification;)I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->userNotification:Lcom/vkcoffee/android/data/UserNotification;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->getButtonStyle(Lcom/vkcoffee/android/data/UserNotification;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->userNotification:Lcom/vkcoffee/android/data/UserNotification;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->hasUsers(Lcom/vkcoffee/android/data/UserNotification;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->createViewType(IIZ)I

    move-result v0

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 64
    return-void
.end method
