.class public Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GroupInvitationHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/GroupInvitation;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final sFormatter:Ljava/text/DecimalFormat;


# instance fields
.field private mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF2Int",
            "<",
            "Lcom/vkcoffee/android/api/GroupInvitation;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lcom/vkcoffee/android/api/GroupInvitation;

.field private mGroupListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfo:Landroid/widget/TextView;

.field private final mMessage:Landroid/widget/TextView;

.field private final mNegativeButton:Landroid/widget/TextView;

.field private final mPhoto:Landroid/widget/ImageView;

.field private final mPositiveButton:Landroid/widget/TextView;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    sput-object v1, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->sFormatter:Ljava/text/DecimalFormat;

    .line 33
    sget-object v1, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->sFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 34
    .local v0, "symbols":Ljava/text/DecimalFormatSymbols;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 35
    sget-object v1, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->sFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    const v0, 0x7f0300b2

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 56
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mTitle:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mSubtitle:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mInfo:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mPhoto:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f100204

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mPositiveButton:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f100205

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mNegativeButton:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mMessage:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method public attach(Lcom/vkcoffee/android/functions/VoidF1;Lcom/vkcoffee/android/functions/VoidF2Int;)Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;
    .locals 0
    .param p1    # Lcom/vkcoffee/android/functions/VoidF1;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vkcoffee/android/functions/VoidF2Int;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;",
            "Lcom/vkcoffee/android/functions/VoidF2Int",
            "<",
            "Lcom/vkcoffee/android/api/GroupInvitation;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "groupClickListener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/api/Group;>;"
    .local p2, "acceptListener":Lcom/vkcoffee/android/functions/VoidF2Int;, "Lcom/vkcoffee/android/functions/VoidF2Int<Lcom/vkcoffee/android/api/GroupInvitation;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mGroupListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 71
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    .line 72
    return-object p0
.end method

.method public bind(Lcom/vkcoffee/android/api/GroupInvitation;)V
    .locals 12
    .param p1, "item"    # Lcom/vkcoffee/android/api/GroupInvitation;

    .prologue
    const/16 v11, 0xa0

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mData:Lcom/vkcoffee/android/api/GroupInvitation;

    .line 79
    iget-object v1, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget-object v1, v1, Lcom/vkcoffee/android/api/Group;->stringMembersCount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    const v2, 0x7f0e001e

    iget-object v3, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget v3, v3, Lcom/vkcoffee/android/api/Group;->members_count:I

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->sFormatter:Ljava/text/DecimalFormat;

    iget-object v6, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget v6, v6, Lcom/vkcoffee/android/api/Group;->members_count:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v2, v3, v4}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/api/Group;->stringMembersCount:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget-object v2, v2, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget-object v2, v2, Lcom/vkcoffee/android/api/Group;->stringMembersCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mInfo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/GroupInvitation;->inviter:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v1, :cond_2

    const v1, 0x7f080278

    :goto_0
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/vkcoffee/android/api/GroupInvitation;->inviter:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {p0, v1, v3}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mPositiveButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget v1, v1, Lcom/vkcoffee/android/api/Group;->type:I

    if-ne v1, v9, :cond_3

    const v1, 0x7f080232

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v1, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget-boolean v1, v1, Lcom/vkcoffee/android/api/Group;->verified:Z

    if-eqz v1, :cond_4

    .line 89
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/GroupInvitation;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 90
    .local v0, "title":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_1

    .line 91
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "title":Landroid/text/SpannableStringBuilder;
    iget-object v1, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget-object v1, v1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    .restart local v0    # "title":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 93
    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 94
    new-instance v1, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02023a

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawables/CenteredImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 96
    :cond_1
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/api/GroupInvitation;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .end local v0    # "title":Landroid/text/SpannableStringBuilder;
    :goto_2
    iget-object v1, p1, Lcom/vkcoffee/android/api/GroupInvitation;->sent:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 105
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mMessage:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/GroupInvitation;->sent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f080191

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    :goto_4
    return-void

    .line 85
    :cond_2
    const v1, 0x7f080279

    goto/16 :goto_0

    .line 86
    :cond_3
    const v1, 0x7f08022f

    goto :goto_1

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget-object v2, v2, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 108
    :cond_5
    const v1, 0x7f080192

    goto :goto_3

    .line 110
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/vkcoffee/android/api/GroupInvitation;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->bind(Lcom/vkcoffee/android/api/GroupInvitation;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mGroupListener:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mGroupListener:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mData:Lcom/vkcoffee/android/api/GroupInvitation;

    iget-object v1, v1, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mPositiveButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mData:Lcom/vkcoffee/android/api/GroupInvitation;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vkcoffee/android/functions/VoidF2Int;->f(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mNegativeButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mData:Lcom/vkcoffee/android/api/GroupInvitation;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vkcoffee/android/functions/VoidF2Int;->f(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    return-void
.end method
