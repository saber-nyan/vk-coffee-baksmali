.class public Lcom/vkcoffee/android/ui/SummaryListPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "SummaryListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    return-void
.end method

.method private updateSummary()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SummaryListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/SummaryListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/SummaryListPreference;->updateSummary()V

    .line 43
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/SummaryListPreference;->updateSummary()V

    .line 37
    return-void
.end method
