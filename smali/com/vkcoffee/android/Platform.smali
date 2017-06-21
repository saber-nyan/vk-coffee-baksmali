.class public Lcom/vkcoffee/android/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static CHANGE_PLATFORM:Ljava/lang/String;

.field private static platform:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "com.vkcoffee.android.CHANGE_PLATFORM"

    sput-object v0, Lcom/vkcoffee/android/Platform;->CHANGE_PLATFORM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ModalPlatform(Landroid/app/Activity;ZZ)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "wall"    # Z
    .param p2, "dev"    # Z

    .prologue
    const/4 v8, 0x0

    .line 108
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v6, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v7, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget v7, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget v7, Lcom/vkcoffee/android/PlatformData;->IPHONE:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget v7, Lcom/vkcoffee/android/PlatformData;->IPHONE:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget v7, Lcom/vkcoffee/android/PlatformData;->IPAD:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget v7, Lcom/vkcoffee/android/PlatformData;->IPAD:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget v7, Lcom/vkcoffee/android/PlatformData;->SYMBIAN:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget v7, Lcom/vkcoffee/android/PlatformData;->SYMBIAN:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget v7, Lcom/vkcoffee/android/PlatformData;->WIN_PC:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget v7, Lcom/vkcoffee/android/PlatformData;->WIN_PC:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget v7, Lcom/vkcoffee/android/PlatformData;->WIN_PH:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget v7, Lcom/vkcoffee/android/PlatformData;->WIN_PH:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget v7, Lcom/vkcoffee/android/PlatformData;->BLACK_BERRY:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget v7, Lcom/vkcoffee/android/PlatformData;->BLACK_BERRY:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget v7, Lcom/vkcoffee/android/PlatformData;->SNAPSTER:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget v7, Lcom/vkcoffee/android/PlatformData;->SNAPSTER:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget v7, Lcom/vkcoffee/android/PlatformData;->KATE:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget v7, Lcom/vkcoffee/android/PlatformData;->KATE:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    if-eqz p2, :cond_0

    .line 138
    sget v7, Lcom/vkcoffee/android/PlatformData;->LYNT:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget v7, Lcom/vkcoffee/android/PlatformData;->LYNT:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget v7, Lcom/vkcoffee/android/PlatformData;->API_CONSOLE:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget v7, Lcom/vkcoffee/android/PlatformData;->API_CONSOLE:I

    invoke-static {v7}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v7, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0438\u0434\u0435\u043d\u0442\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440"

    invoke-virtual {v1, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 147
    new-instance v5, Landroid/widget/NumberPicker;

    invoke-direct {v5, p0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 148
    .local v5, "numberPicker":Landroid/widget/NumberPicker;
    const/high16 v7, 0x60000

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 149
    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 150
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 151
    const/4 v3, 0x0

    .line 153
    .local v3, "item":I
    if-eqz p1, :cond_1

    .line 154
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v3

    .line 160
    :goto_0
    sget v7, Lcom/vkcoffee/android/PlatformData;->SNAPSTER:I

    if-ne v3, v7, :cond_2

    .line 161
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 183
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 185
    .local v4, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_c

    .line 189
    invoke-virtual {v5, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 192
    const v7, 0x7f08031e

    new-instance v8, Lcom/vkcoffee/android/Platform$1;

    invoke-direct {v8, v5, v0, p1, p0}, Lcom/vkcoffee/android/Platform$1;-><init>(Landroid/widget/NumberPicker;Ljava/util/ArrayList;ZLandroid/app/Activity;)V

    invoke-virtual {v1, v7, v8}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 239
    return-void

    .line 156
    .end local v2    # "i":I
    .end local v4    # "items":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v3

    goto :goto_0

    .line 162
    :cond_2
    sget v7, Lcom/vkcoffee/android/PlatformData;->IPHONE:I

    if-ne v3, v7, :cond_3

    .line 163
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 164
    :cond_3
    sget v7, Lcom/vkcoffee/android/PlatformData;->IPAD:I

    if-ne v3, v7, :cond_4

    .line 165
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 166
    :cond_4
    sget v7, Lcom/vkcoffee/android/PlatformData;->SYMBIAN:I

    if-ne v3, v7, :cond_5

    .line 167
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 168
    :cond_5
    sget v7, Lcom/vkcoffee/android/PlatformData;->WIN_PC:I

    if-ne v3, v7, :cond_6

    .line 169
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 170
    :cond_6
    sget v7, Lcom/vkcoffee/android/PlatformData;->WIN_PH:I

    if-ne v3, v7, :cond_7

    .line 171
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 172
    :cond_7
    sget v7, Lcom/vkcoffee/android/PlatformData;->BLACK_BERRY:I

    if-ne v3, v7, :cond_8

    .line 173
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 174
    :cond_8
    sget v7, Lcom/vkcoffee/android/PlatformData;->KATE:I

    if-ne v3, v7, :cond_9

    .line 175
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 176
    :cond_9
    sget v7, Lcom/vkcoffee/android/PlatformData;->LYNT:I

    if-ne v3, v7, :cond_a

    .line 177
    const/16 v7, 0x9

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 178
    :cond_a
    sget v7, Lcom/vkcoffee/android/PlatformData;->API_CONSOLE:I

    if-ne v3, v7, :cond_b

    .line 179
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 181
    :cond_b
    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    goto/16 :goto_1

    .line 186
    .restart local v2    # "i":I
    .restart local v4    # "items":[Ljava/lang/String;
    :cond_c
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v2

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public static START_USE_CUSTOM()V
    .locals 2

    .prologue
    .line 312
    sget v0, Lcom/vkcoffee/android/Platform;->platform:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    if-eq v0, v1, :cond_0

    .line 313
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->getSid(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 314
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->getSecret(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 316
    :cond_0
    return-void
.end method

.method public static STOP_USE_CUSTOM()V
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getVKsid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 320
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getVKsecret()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 321
    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/vkcoffee/android/Platform;->platform:I

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/vkcoffee/android/Platform;->platform:I

    return v0
.end method

.method static synthetic access$2(Landroid/app/Activity;IZ)V
    .locals 0

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/Platform;->sayNewAuth(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public static getNamePlatform(I)Ljava/lang/String;
    .locals 2
    .param p0, "platform"    # I

    .prologue
    .line 48
    sget v1, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    if-ne p0, v1, :cond_0

    .line 49
    const-string v0, "Android"

    .line 73
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 50
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    sget v1, Lcom/vkcoffee/android/PlatformData;->SYMBIAN:I

    if-ne p0, v1, :cond_1

    .line 51
    const-string v0, "Nokia (Symbian)"

    .line 52
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/vkcoffee/android/PlatformData;->SNAPSTER:I

    if-ne p0, v1, :cond_2

    .line 53
    const-string v0, "Snapster"

    .line 54
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    sget v1, Lcom/vkcoffee/android/PlatformData;->IPHONE:I

    if-ne p0, v1, :cond_3

    .line 55
    const-string v0, "iPhone"

    .line 56
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    sget v1, Lcom/vkcoffee/android/PlatformData;->IPAD:I

    if-ne p0, v1, :cond_4

    .line 57
    const-string v0, "iPad"

    .line 58
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    sget v1, Lcom/vkcoffee/android/PlatformData;->WIN_PC:I

    if-ne p0, v1, :cond_5

    .line 59
    const-string v0, "Windows PC"

    .line 60
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    sget v1, Lcom/vkcoffee/android/PlatformData;->WIN_PH:I

    if-ne p0, v1, :cond_6

    .line 61
    const-string v0, "Windows Phone"

    .line 62
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_6
    sget v1, Lcom/vkcoffee/android/PlatformData;->BLACK_BERRY:I

    if-ne p0, v1, :cond_7

    .line 63
    const-string v0, "BlackBerry"

    .line 64
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_7
    sget v1, Lcom/vkcoffee/android/PlatformData;->KATE:I

    if-ne p0, v1, :cond_8

    .line 65
    const-string v0, "Kate"

    .line 66
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_8
    sget v1, Lcom/vkcoffee/android/PlatformData;->LYNT:I

    if-ne p0, v1, :cond_9

    .line 67
    const-string v0, "Lynt"

    .line 68
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "name":Ljava/lang/String;
    :cond_9
    sget v1, Lcom/vkcoffee/android/PlatformData;->API_CONSOLE:I

    if-ne p0, v1, :cond_a

    .line 69
    const-string v0, "API.Console"

    .line 70
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v0    # "name":Ljava/lang/String;
    :cond_a
    const-string v0, "WTF?"

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public static goCheck(Landroid/app/Activity;Z)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "wall"    # Z

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-static {}, Lcom/vkcoffee/android/Platform;->START_USE_CUSTOM()V

    .line 246
    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 247
    .local v3, "sid":Ljava/lang/String;
    sget-object v2, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 253
    .local v2, "secret":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 254
    .local v0, "checkReq":Lcom/loopj/android/http/RequestParams;
    const-string v4, "access_token"

    invoke-virtual {v0, v4, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v4, "fields"

    const-string v5, "country"

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "v"

    const-string v5, "5.29"

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v4, "sig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/method/account.getInfo?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 259
    .local v1, "online":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "account.getInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/Platform$2;

    invoke-direct {v5, p0, p1}, Lcom/vkcoffee/android/Platform$2;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v1, v4, v0, v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 301
    return-void

    .line 249
    .end local v0    # "checkReq":Lcom/loopj/android/http/RequestParams;
    .end local v1    # "online":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "secret":Ljava/lang/String;
    .end local v3    # "sid":Ljava/lang/String;
    :cond_0
    sget v4, Lcom/vkcoffee/android/Platform;->platform:I

    invoke-static {v4}, Lcom/vkcoffee/android/PlatformData;->getSid(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3    # "sid":Ljava/lang/String;
    sget v4, Lcom/vkcoffee/android/Platform;->platform:I

    invoke-static {v4}, Lcom/vkcoffee/android/PlatformData;->getSecret(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "secret":Ljava/lang/String;
    goto :goto_0
.end method

.method private static sayNewAuth(Landroid/app/Activity;IZ)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "platform"    # I
    .param p2, "wall"    # Z

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getA()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "a":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getB()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "b":Ljava/lang/String;
    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "\u041e\u0442\u0441\u0443\u0442\u0432\u0443\u0435\u0442 \u043b\u043e\u0433\u0438\u043d. \u041d\u0443\u0436\u043d\u043e \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u043e\u0447\u0438\u0441\u0442\u043a\u0443 \u0434\u0430\u043d\u043d\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438\u043b\u0438 \u0432\u044b\u0439\u0442\u0438 \u0438\u0437 \u0443\u0447\u0435\u0442\u043d\u043e\u0439 \u0437\u0430\u043f\u0438\u0441\u0438 \u0438 \u0432\u043e\u0439\u0442\u0438 \u0441\u043d\u043e\u0432\u0430"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 105
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "\u041e\u0442\u0441\u0443\u0442\u0432\u0443\u0435\u0442 \u043f\u0430\u0440\u043e\u043b\u044c. \u041d\u0443\u0436\u043d\u043e \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u043e\u0447\u0438\u0441\u0442\u043a\u0443 \u0434\u0430\u043d\u043d\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438\u043b\u0438 \u0432\u044b\u0439\u0442\u0438 \u0438\u0437 \u0443\u0447\u0435\u0442\u043d\u043e\u0439 \u0437\u0430\u043f\u0438\u0441\u0438 \u0438 \u0432\u043e\u0439\u0442\u0438 \u0441\u043d\u043e\u0432\u0430"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :cond_1
    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "FCp2Y8AeP0HZIBdnys89lA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    const-string v2, "\u041d\u0438 \u043b\u043e\u0433\u0438\u043d\u0430, \u043d\u0438 \u043f\u0430\u0440\u043e\u043b\u044f \u043d\u0435\u0442. \u041d\u0443\u0436\u043d\u043e \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u043e\u0447\u0438\u0441\u0442\u043a\u0443 \u0434\u0430\u043d\u043d\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438\u043b\u0438 \u0432\u044b\u0439\u0442\u0438 \u0438\u0437 \u0443\u0447\u0435\u0442\u043d\u043e\u0439 \u0437\u0430\u043f\u0438\u0441\u0438 \u0438 \u0432\u043e\u0439\u0442\u0438 \u0441\u043d\u043e\u0432\u0430"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 96
    :cond_2
    if-eqz p2, :cond_3

    .line 97
    invoke-static {p1}, Lcom/vkcoffee/android/PlatformData;->changePlatformNow(I)V

    .line 98
    invoke-static {}, Lcom/vkcoffee/android/Platform;->successPlatformPosting()V

    .line 103
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "login"

    invoke-static {v0}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "password"

    invoke-static {v1}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0xcc

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-static {p1}, Lcom/vkcoffee/android/PlatformData;->changeOnlinePlatformNow(I)V

    .line 101
    invoke-static {}, Lcom/vkcoffee/android/Platform;->successPlatformPosting()V

    goto :goto_1
.end method

.method public static setCurrentPlatform(IZ)V
    .locals 0
    .param p0, "platform"    # I
    .param p1, "wall"    # Z

    .prologue
    .line 304
    if-eqz p1, :cond_0

    .line 305
    invoke-static {p0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatform(I)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatformOnline(I)V

    goto :goto_0
.end method

.method public static successPlatformPosting()V
    .locals 3

    .prologue
    .line 327
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/vkcoffee/android/Platform;->CHANGE_PLATFORM:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 331
    return-void
.end method
