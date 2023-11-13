.class public final Landroidx/appcompat/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$10;->this$0:Landroidx/appcompat/widget/SearchView;

    .line 2
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    xor-int/lit8 p2, p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    .line 9
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 10
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Lcom/motorola/camera/fragments/SettingsManagerFragment$1;

    .line 11
    iget-object p4, p2, Lcom/motorola/camera/fragments/SettingsManagerFragment$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment;

    .line 12
    iget-object p4, p4, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mAdapter:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    .line 13
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;

    invoke-direct {v0, p4}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V

    .line 15
    invoke-virtual {v0, p3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p2, p2, Lcom/motorola/camera/fragments/SettingsManagerFragment$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment;

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/String;

    return-void
.end method
