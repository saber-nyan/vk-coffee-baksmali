.class Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/PreferenceGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$1;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    return-void
.end method

.method static synthetic access$202(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 77
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return v0
.end method

.method static synthetic access$302(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 77
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return v0
.end method

.method static synthetic access$402(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 84
    instance-of v2, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 87
    check-cast v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 88
    .local v0, "other":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v3, v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v3, v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 95
    const/16 v0, 0x11

    .line 96
    .local v0, "result":I
    iget v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    add-int/lit16 v0, v1, 0x20f

    .line 97
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    add-int v0, v1, v2

    .line 98
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 99
    return v0
.end method
