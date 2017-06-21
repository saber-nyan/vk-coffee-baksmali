.class public Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "ChatMessageHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;,
        Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$vkcoffee$android$ui$holder$messages$ChatMessageHolder$ViewType:[I

.field public static STANDARD_PADDING:I

.field public static STANDARD_PADDING_BOTTOM:I

.field private static final TIME_DX:I

.field protected static final WRAP_BG_RES:[[I


# instance fields
.field public final attachments:Landroid/view/ViewGroup;

.field private attachmentsImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final attachmentsWrapper:Landroid/view/View;

.field private chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field public final extGiftText:Landroid/widget/TextView;

.field public final fwdName:Landroid/widget/TextView;

.field public final fwdTime:Landroid/widget/TextView;

.field public final fwdWrap:Landroid/view/ViewGroup;

.field private isActionMod:Z

.field private isActionMode:Z

.field private isSelected:Z

.field private isTimeVisible:Z

.field public lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

.field public final msgFwdPhoto:Landroid/widget/ImageView;

.field private peer:I

.field private final progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

.field public final referenceLinkToHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final senderPhoto:Landroid/widget/ImageView;

.field public final showStickerPuckButton:Landroid/widget/TextView;

.field public final stateContainer:Landroid/view/View;

.field public final text:Landroid/widget/TextView;

.field public final time:Landroid/widget/TextView;

.field public final translatedViews:Ljava/util/List;

.field public final wrap:Landroid/view/ViewGroup;


# direct methods
.method static synthetic $SWITCH_TABLE$com$vkcoffee$android$ui$holder$messages$ChatMessageHolder$ViewType()[I
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$SWITCH_TABLE$com$vkcoffee$android$ui$holder$messages$ChatMessageHolder$ViewType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->values()[Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageInText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOutText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->service:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->serviceWithoutImage:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->unreadSeparator:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$SWITCH_TABLE$com$vkcoffee$android$ui$holder$messages$ChatMessageHolder$ViewType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x8

    .line 62
    sput v5, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->STANDARD_PADDING:I

    .line 63
    sput v4, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->STANDARD_PADDING_BOTTOM:I

    .line 64
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->TIME_DX:I

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->WRAP_BG_RES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02006a
        0x7f02006f
        0x7f02006d
        0x7f020068
        0x7f02006c
        0x7f020071
        0x7f020073
        0x7f020074
    .end array-data

    :array_1
    .array-data 4
        0x7f02007d
        0x7f020082
        0x7f020080
        0x7f02007b
        0x7f02007f
        0x7f020076
        0x7f020078
        0x7f020079
    .end array-data

    :array_2
    .array-data 4
        0x7f02006b
        0x7f020070
        0x7f02006e
        0x7f020069
        0x7f02006b
        0x7f020072
        0x7f020072
        0x7f020075
    .end array-data

    :array_3
    .array-data 4
        0x7f02007e
        0x7f020083
        0x7f020081
        0x7f02007c
        0x7f02007e
        0x7f020077
        0x7f020077
        0x7f02007a
    .end array-data
.end method

.method public constructor <init>(Landroid/view/ViewGroup;IILcom/vkcoffee/android/fragments/messages/ChatFragment;I)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "peer"    # I
    .param p4, "chatFragment"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .param p5, "fontSize"    # I

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-static {p2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->getByViewTypeId(I)Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;-><init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;)V

    .line 130
    iput-object p4, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 131
    invoke-static {p2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->getByViewTypeId(I)Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    move-result-object v1

    .line 132
    .local v1, "type":Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;
    sget-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOutText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    if-eq v1, v3, :cond_2

    const/4 v0, 0x0

    .line 133
    .local v0, "isOut":Z
    :goto_0
    sget-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->service:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    if-ne v1, v3, :cond_3

    .line 134
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 143
    :cond_0
    :goto_1
    iget-boolean v3, v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->canTextSizeChange:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    int-to-float v5, p5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    :cond_1
    return-void

    .end local v0    # "isOut":Z
    :cond_2
    move v0, v2

    .line 132
    goto :goto_0

    .line 135
    .restart local v0    # "isOut":Z
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 136
    if-nez v0, :cond_4

    const v3, 0x77359400

    if-ge p3, v3, :cond_4

    .line 137
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_4
    if-nez v0, :cond_0

    .line 139
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    iget-object v4, p4, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUserClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    iget-object v4, p4, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUserLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    iget v2, p2, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->res:I

    invoke-direct {p0, v2, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 150
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isActionMode:Z

    .line 151
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isTimeVisible:Z

    .line 152
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->referenceLinkToHolder:Ljava/lang/ref/WeakReference;

    .line 153
    const v2, 0x7f10004b

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    .line 154
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    instance-of v2, v2, Lcom/vkcoffee/android/ui/LinkedTextView;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    check-cast v2, Lcom/vkcoffee/android/ui/LinkedTextView;

    invoke-virtual {v2, v5}, Lcom/vkcoffee/android/ui/LinkedTextView;->setCanShowMessageOptions(Z)V

    .line 157
    :cond_0
    const v2, 0x7f10004c

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->time:Landroid/widget/TextView;

    .line 158
    const v2, 0x7f100047

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, "progress":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 160
    new-instance v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;-><init>(Landroid/content/Context;)V

    .local v0, "messageStatusDrawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    .line 161
    check-cast v2, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    .line 162
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    .end local v0    # "messageStatusDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    const v2, 0x7f10004a

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->stateContainer:Landroid/view/View;

    .line 167
    const v2, 0x7f10004d

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    .line 168
    const v2, 0x7f100044

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    .line 169
    const v2, 0x7f100292

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsWrapper:Landroid/view/View;

    .line 170
    const v2, 0x7f100049

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    .line 171
    const v2, 0x7f10028e

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->msgFwdPhoto:Landroid/widget/ImageView;

    .line 172
    const v2, 0x7f100293

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->extGiftText:Landroid/widget/TextView;

    .line 173
    const v2, 0x7f100294

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->showStickerPuckButton:Landroid/widget/TextView;

    .line 174
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->showStickerPuckButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->showStickerPuckButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_1
    const v2, 0x7f10028f

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->fwdName:Landroid/widget/TextView;

    .line 178
    const v2, 0x7f100290

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->fwdTime:Landroid/widget/TextView;

    .line 179
    const v2, 0x7f10028d

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->fwdWrap:Landroid/view/ViewGroup;

    .line 180
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->$SWITCH_TABLE$com$vkcoffee$android$ui$holder$messages$ChatMessageHolder$ViewType()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 201
    iput-object v6, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    .line 202
    :goto_1
    return-void

    .line 164
    :cond_3
    iput-object v6, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    goto/16 :goto_0

    .line 192
    :pswitch_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->time:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    goto :goto_1

    .line 198
    :pswitch_1
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->time:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->stateContainer:Landroid/view/View;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fillBg(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;ZZ)V
    .locals 21
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .param p2, "isSelected"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 480
    sget v18, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->STANDARD_PADDING_BOTTOM:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    .line 481
    .local v10, "padBtm":I
    sget v18, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->STANDARD_PADDING:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v11

    .line 482
    .local v11, "padTop":I
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const/16 v18, 0x1

    move/from16 v19, v18

    :goto_0
    if-eqz p2, :cond_6

    const/16 v18, 0x1

    :goto_1
    shl-int/lit8 v18, v18, 0x1

    or-int v7, v19, v18

    .line 483
    .local v7, "index":I
    const/4 v3, 0x0

    .line 484
    .local v3, "canShowDot":Z
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isSticker()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isGraffiti()Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    const/4 v3, 0x1

    .line 527
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 528
    if-nez v3, :cond_10

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    move-object/from16 v18, v0

    sget-object v19, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->haveBeenRed:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V

    .line 540
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    .line 541
    .local v12, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    .line 542
    .local v13, "paddingRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->searchedMessageId:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->searchedMessageId:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    const v18, -0x271d13

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 545
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v11, v13, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 547
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    :cond_4
    const/4 v6, 0x0

    .line 548
    .local v6, "f":F
    :goto_5
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    return-void

    .line 482
    .end local v3    # "canShowDot":Z
    .end local v6    # "f":F
    .end local v7    # "index":I
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "paddingLeft":I
    .end local v13    # "paddingRight":I
    :cond_5
    const/16 v18, 0x0

    move/from16 v19, v18

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 487
    .restart local v3    # "canShowDot":Z
    .restart local v7    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    .line 489
    .local v15, "wPL":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v17

    .line 490
    .local v17, "wPT":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    .line 491
    .local v16, "wPR":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v14

    .line 492
    .local v14, "wPB":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 512
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isTime()Z

    move-result v18

    if-nez v18, :cond_8

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    sget-object v18, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->WRAP_BG_RES:[[I

    aget-object v20, v18, v7

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFirstBubbleBg()Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x0

    :goto_6
    aget v18, v20, v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 514
    const/4 v3, 0x1

    .line 519
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 520
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    check-cast v9, Lcom/vkcoffee/android/ui/MessageRelativeLayout;

    .line 522
    .local v9, "messageRelativeLayout":Lcom/vkcoffee/android/ui/MessageRelativeLayout;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    :cond_9
    const/high16 v18, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v18}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    .line 523
    .local v4, "dp":I
    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    :cond_a
    const/high16 v18, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v18}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    .line 524
    .local v5, "dp2":I
    :goto_9
    invoke-virtual {v9, v4, v5}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->setPaddingD(II)V

    goto/16 :goto_2

    .line 494
    .end local v4    # "dp":I
    .end local v5    # "dp2":I
    .end local v9    # "messageRelativeLayout":Lcom/vkcoffee/android/ui/MessageRelativeLayout;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    sget-object v18, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->WRAP_BG_RES:[[I

    aget-object v20, v18, v7

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFirstBubbleBg()Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    :goto_a
    aget v18, v20, v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 495
    const/4 v10, 0x0

    .line 496
    goto/16 :goto_7

    .line 494
    :cond_b
    const/16 v18, 0x7

    goto :goto_a

    .line 498
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    sget-object v19, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->WRAP_BG_RES:[[I

    aget-object v19, v19, v7

    const/16 v20, 0x2

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 499
    const/4 v10, 0x0

    .line 500
    const/4 v11, 0x0

    .line 501
    goto/16 :goto_7

    .line 503
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    sget-object v19, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->WRAP_BG_RES:[[I

    aget-object v19, v19, v7

    const/16 v20, 0x3

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 504
    const/4 v11, 0x0

    .line 505
    const/4 v3, 0x1

    .line 506
    goto/16 :goto_7

    .line 508
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    sget-object v18, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->WRAP_BG_RES:[[I

    aget-object v20, v18, v7

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFirstBubbleBg()Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x4

    :goto_b
    aget v18, v20, v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 509
    const/4 v3, 0x1

    .line 510
    goto/16 :goto_7

    .line 508
    :cond_c
    const/16 v18, 0x6

    goto :goto_b

    .line 513
    :cond_d
    const/16 v18, 0x5

    goto/16 :goto_6

    .line 522
    .restart local v9    # "messageRelativeLayout":Lcom/vkcoffee/android/ui/MessageRelativeLayout;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 523
    .restart local v4    # "dp":I
    :cond_f
    const/4 v5, 0x0

    goto :goto_9

    .line 530
    .end local v4    # "dp":I
    .end local v9    # "messageRelativeLayout":Lcom/vkcoffee/android/ui/MessageRelativeLayout;
    .end local v14    # "wPB":I
    .end local v15    # "wPL":I
    .end local v16    # "wPR":I
    .end local v17    # "wPT":I
    :cond_10
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFailed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    move-object/from16 v18, v0

    sget-object v19, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->error:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V

    goto/16 :goto_3

    .line 532
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    move/from16 v18, v0

    if-gez v18, :cond_12

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    move-object/from16 v18, v0

    sget-object v19, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->sending:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V

    goto/16 :goto_3

    .line 534
    :cond_12
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->readState:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    move-object/from16 v18, v0

    sget-object v19, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->haveBeenRed:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V

    goto/16 :goto_3

    .line 537
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    move-object/from16 v18, v0

    sget-object v19, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->sent:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V

    goto/16 :goto_3

    .line 543
    .restart local v12    # "paddingLeft":I
    .restart local v13    # "paddingRight":I
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 547
    .restart local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_15
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getViewType(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)I
    .locals 2
    .param p0, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .prologue
    .line 619
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasAttachments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->service:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    .line 627
    :goto_0
    return v0

    .line 623
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->serviceWithoutImage:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    .line 624
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 625
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->unreadSeparator:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    .line 627
    :cond_2
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasAttachments()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOutText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageInText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    goto :goto_0
.end method

.method private processAttachments(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Z)V
    .locals 24
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .param p2, "isSelected"    # Z

    .prologue
    .line 340
    const/16 v16, 0x0

    .line 341
    .local v16, "stickerView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 343
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-lt v10, v0, :cond_6

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 350
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsImageViews:Ljava/util/List;

    .line 351
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v15, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v8, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const/4 v13, 0x0

    .line 354
    .local v13, "ph":I
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_8

    .line 390
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 391
    const/4 v10, 0x0

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_10

    .line 401
    :cond_2
    const/4 v11, 0x0

    .line 402
    .local v11, "idx":I
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_11

    .line 416
    .end local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .end local v10    # "i":I
    .end local v11    # "idx":I
    .end local v13    # "ph":I
    .end local v15    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 417
    const/4 v10, 0x0

    .line 418
    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-lt v10, v0, :cond_14

    .line 425
    .end local v10    # "i":I
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 436
    .end local v16    # "stickerView":Landroid/view/View;
    :cond_5
    :goto_5
    return-void

    .line 344
    .restart local v10    # "i":I
    .restart local v16    # "stickerView":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 345
    .local v9, "av":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 346
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/vkcoffee/android/attachments/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 343
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 354
    .end local v9    # "av":Landroid/view/View;
    .restart local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .restart local v13    # "ph":I
    .restart local v15    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/Attachment;

    .line 355
    .local v5, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v5, Lcom/vkcoffee/android/attachments/GeoAttachment;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v18, v5

    .line 356
    check-cast v18, Lcom/vkcoffee/android/attachments/GeoAttachment;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    .line 358
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/attachments/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v17

    .line 359
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    instance-of v0, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    instance-of v0, v5, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 361
    move v14, v13

    .line 362
    .local v14, "photoIdx":I
    add-int/lit8 v13, v13, 0x1

    .line 363
    new-instance v20, Lcom/vkcoffee/android/Photo;

    move-object/from16 v18, v5

    check-cast v18, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/Photo;-><init>(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    move-object/from16 v0, p0

    invoke-static {v0, v15, v14}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ChatMessageHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;Ljava/util/ArrayList;I)Landroid/view/View$OnClickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    .end local v14    # "photoIdx":I
    :cond_a
    instance-of v0, v5, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 367
    new-instance v20, Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v18, v5

    check-cast v18, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/AudioFile;-><init>(Lcom/vkcoffee/android/attachments/AudioAttachment;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    const/high16 v18, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v18}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    const/high16 v21, 0x41000000    # 8.0f

    invoke-static/range {v21 .. v21}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingBottom()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 370
    :cond_b
    instance-of v0, v5, Lcom/vkcoffee/android/attachments/VideoAttachment;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v18, v5

    .line 371
    check-cast v18, Lcom/vkcoffee/android/attachments/VideoAttachment;

    const-string v20, "messages"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkcoffee/android/attachments/VideoAttachment;->referer:Ljava/lang/String;

    .line 373
    :cond_c
    instance-of v0, v5, Lcom/vkcoffee/android/attachments/GiftAttachment;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v18, v5

    .line 374
    check-cast v18, Lcom/vkcoffee/android/attachments/GiftAttachment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/attachments/GiftAttachment;->setCallback(Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;)V

    .line 375
    check-cast v5, Lcom/vkcoffee/android/attachments/GiftAttachment;

    .end local v5    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-virtual {v5}, Lcom/vkcoffee/android/attachments/GiftAttachment;->hasPackId()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->extGiftText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->extGiftText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v20, 0x7f08051d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->extGiftText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02013c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 380
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->showStickerPuckButton:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 382
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->extGiftText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->extGiftText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v20, 0x7f0801e8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->extGiftText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02013b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->showStickerPuckButton:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 392
    .end local v17    # "v":Landroid/view/View;
    :cond_10
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    .line 393
    .local v6, "a2":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v6

    .line 394
    check-cast v18, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move-object/from16 v0, v18

    iput v10, v0, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlistPos:I

    move-object/from16 v18, v6

    .line 395
    check-cast v18, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move-object/from16 v0, v18

    iput-object v8, v0, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlist:Ljava/util/ArrayList;

    .line 396
    check-cast v6, Lcom/vkcoffee/android/attachments/AudioAttachment;

    .end local v6    # "a2":Lcom/vkcoffee/android/attachments/Attachment;
    const-string v18, "messages"

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/vkcoffee/android/attachments/AudioAttachment;->referer:Ljava/lang/String;

    .line 397
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 402
    .restart local v11    # "idx":I
    :cond_11
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/Attachment;

    .line 403
    .local v7, "a22":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v7, Lcom/vkcoffee/android/attachments/ImageAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 405
    .restart local v9    # "av":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsImageViews:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    instance-of v0, v7, Lcom/vkcoffee/android/attachments/StickerAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 407
    move-object/from16 v16, v9

    .line 408
    check-cast v7, Lcom/vkcoffee/android/attachments/StickerAttachment;

    .end local v7    # "a22":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/vkcoffee/android/attachments/StickerAttachment;->setCallback(Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;)V

    .line 413
    .end local v9    # "av":Landroid/view/View;
    :cond_12
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 409
    .restart local v7    # "a22":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v9    # "av":Landroid/view/View;
    :cond_13
    instance-of v0, v7, Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 410
    move-object/from16 v16, v9

    goto :goto_6

    .line 419
    .end local v7    # "a22":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v8    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .end local v9    # "av":Landroid/view/View;
    .end local v11    # "idx":I
    .end local v13    # "ph":I
    .end local v15    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    .line 420
    .local v12, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v12, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 428
    .end local v10    # "i":I
    .end local v12    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isSticker()Z

    move-result v18

    if-nez v18, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isGraffiti()Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_16
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    if-eqz v16, :cond_5

    .line 431
    if-eqz p2, :cond_17

    .line 432
    check-cast v16, Landroid/widget/ImageView;

    .end local v16    # "stickerView":Landroid/view/View;
    const/high16 v18, 0x33000000

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_5

    .line 434
    .restart local v16    # "stickerView":Landroid/view/View;
    :cond_17
    check-cast v16, Landroid/widget/ImageView;

    .end local v16    # "stickerView":Landroid/view/View;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_5
.end method

.method private processFw(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .prologue
    .line 470
    iget v0, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    if-lez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    check-cast v0, Lcom/vkcoffee/android/ui/MessageRelativeLayout;

    iget v1, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevelLast:I

    iget v2, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    iget v3, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevelNext:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/MessageRelativeLayout;->setLevel(III)V

    .line 472
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->fwdName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->fwdTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdTime:I

    invoke-static {v1}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->fwdWrap:Landroid/view/ViewGroup;

    iget v1, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->fwdWrap:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    :cond_0
    return-void
.end method

.method private processSubViewVisible(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->time:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    invoke-static {v1}, Lcom/vkcoffee/android/TimeUtils;->time(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 331
    iget v0, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    if-eq v0, v3, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->time:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->time:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)V
    .locals 1
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Z)V

    .line 247
    return-void
.end method

.method public bind(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Z)V
    .locals 6
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .param p2, "animate"    # Z

    .prologue
    .line 250
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isSelected:Z

    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isActionMod:Z

    iget v4, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->peer:I

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;ZZIZ)V

    .line 251
    return-void
.end method

.method public bind(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;ZZIZ)V
    .locals 9
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .param p2, "isSelected"    # Z
    .param p3, "isActionMod"    # Z
    .param p4, "peer"    # I
    .param p5, "animate"    # Z

    .prologue
    const/4 v7, 0x0

    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, "z":Z
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isSelected:Z

    .line 256
    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isActionMod:Z

    .line 257
    iput p4, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->peer:I

    .line 258
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 263
    .end local v0    # "i":I
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 264
    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isActionMode:Z

    .line 265
    iget v5, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    .line 266
    iget v5, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 267
    iget-object v5, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 268
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    iget v6, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    invoke-static {v6}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    sget-object v6, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v6, v6, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 275
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->processAttachments(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Z)V

    .line 327
    :cond_1
    :goto_2
    return-void

    .line 260
    .restart local v0    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isTimeVisible:Z

    if-eqz v6, :cond_3

    sget v6, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->TIME_DX:I

    int-to-float v6, v6

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 272
    .end local v0    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    .line 278
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->processAttachments(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Z)V

    .line 283
    iget v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->peer:I

    invoke-static {v5}, Lcom/vkcoffee/android/DecrEncr;->getValueCheckBox(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 284
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    iget v8, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->peer:I

    invoke-static {v6, v8}, Lcom/vkcoffee/android/DecrEncr;->autoDecryptionView(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_4
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->processSubViewVisible(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)V

    .line 310
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x8

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    invoke-direct {p0, p1, p2, p5}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->fillBg(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;ZZ)V

    .line 312
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->processFw(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)V

    .line 313
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    iget-boolean v5, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    if-nez v5, :cond_8

    .line 314
    const v5, 0x77359400

    if-le p4, v5, :cond_7

    .line 315
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    .line 316
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isShowPhoto()Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    iget v5, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    :cond_6
    move v1, v7

    .line 317
    .local v1, "i2":I
    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    .end local v1    # "i2":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_7
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    iget v6, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 321
    :cond_8
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->wrap:Landroid/view/ViewGroup;

    .line 322
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    if-nez p3, :cond_9

    .line 323
    const/4 v4, 0x1

    .line 325
    :cond_9
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    goto/16 :goto_2

    .line 303
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_a
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->text:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    move v5, v7

    .line 310
    goto :goto_5

    .line 316
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    :cond_c
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "image"    # I

    .prologue
    const v1, 0x7f0202c3

    .line 605
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsImageViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsImageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsImageViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/attachments/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasMainPhoto()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->msgFwdPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->msgFwdPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getLastItem()Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    return-object v0
.end method

.method public getSearchedMessageColorAnimator()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    const-string v2, "backgroundColor"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 224
    .local v0, "colorAnim":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 225
    return-object v0

    .line 223
    nop

    :array_0
    .array-data 4
        -0x271d13
        0xd8e2ed
    .end array-data
.end method

.method lambda$processAttachments$436(Ljava/util/ArrayList;ILandroid/view/View;)V
    .locals 4
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "i"    # I
    .param p3, "v1"    # Landroid/view/View;

    .prologue
    const v3, 0x7f10004f

    .line 439
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 440
    new-instance v0, Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$1;-><init>(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    .line 464
    .local v0, "viewer":Lcom/vkcoffee/android/PhotoViewer;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 465
    invoke-virtual {v0}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    .line 467
    .end local v0    # "viewer":Lcom/vkcoffee/android/PhotoViewer;
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->onItemClick(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)V

    .line 584
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 553
    const v0, 0x7f100294

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 554
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasAttachments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/GiftAttachment;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/GiftAttachment;

    iget v1, v0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    const-string v2, "message"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(ILjava/lang/String;Landroid/app/Activity;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isActionMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isShowingTime()Z

    move-result v0

    if-nez v0, :cond_3

    .line 558
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->onClick()V

    goto :goto_0

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 560
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->toggleTime()V

    goto :goto_0

    .line 562
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 565
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->onClick()V

    goto :goto_0

    .line 568
    :sswitch_1
    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 562
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100046 -> :sswitch_0
        0x7f10004d -> :sswitch_0
        0x7f10028d -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->chatFragment:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->onItemLongClick(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->onLongClick()Z

    move-result v0

    return v0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsImageViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsImageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachmentsImageViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->bindingImages:Z

    invoke-interface {v0, v1, p2, v2}, Lcom/vkcoffee/android/attachments/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasMainPhoto()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->senderPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->msgFwdPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->msgFwdPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setReadState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->haveBeenRed:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V

    .line 216
    :cond_0
    return-void

    .line 214
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->sent:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    goto :goto_0
.end method

.method public setTimeIsVisible(Z)V
    .locals 0
    .param p1, "isTimeVisible"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->isTimeVisible:Z

    .line 220
    return-void
.end method

.method public setTimeIsVisibleAnim(Z)Ljava/util/List;
    .locals 7
    .param p1, "isTimeVisible"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    if-nez v5, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 242
    :cond_0
    return-object v0

    .line 233
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 235
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 236
    .local v3, "obj":Ljava/lang/Object;
    const-string v4, "translationX"

    .line 237
    .local v4, "str":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v1, v5, [F

    .line 238
    .local v1, "fArr":[F
    const/4 v6, 0x0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->translatedViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    aput v5, v1, v6

    .line 239
    const/4 v6, 0x1

    if-eqz p1, :cond_2

    sget v5, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->TIME_DX:I

    int-to-float v5, v5

    :goto_1
    aput v5, v1, v6

    .line 240
    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public showFailed()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->progressDrawable:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;

    sget-object v1, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->error:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;->setDrawState(Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;Z)V

    .line 210
    :cond_0
    return-void
.end method
