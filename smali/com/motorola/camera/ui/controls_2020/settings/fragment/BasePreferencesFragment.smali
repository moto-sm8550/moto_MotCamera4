.class public Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "BasePreferencesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;
    }
.end annotation


# instance fields
.field public coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final preferenceRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->preferenceRes:I

    .line 3
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/internal/ContextScope;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final disableScrollInPreference()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;

    .line 4
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 7
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 8
    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;->isScrollEnabled:Z

    .line 10
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const-string v0, "com.motorola.camera_preferences"

    .line 2
    iput-object v0, p1, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Landroidx/preference/PreferenceManager;->mSharedPreferencesMode:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p1, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 5
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->preferenceRes:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, p1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 8
    new-instance v4, Landroidx/preference/PreferenceInflater;

    invoke-direct {v4, v2, p1}, Landroidx/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceManager;)V

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 10
    :try_start_0
    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/preference/Preference;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 12
    check-cast v2, Landroidx/preference/PreferenceScreen;

    .line 13
    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 14
    iget-object v1, p1, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    :cond_0
    iput-boolean v0, p1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {v2, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 18
    instance-of p1, v2, Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Preference object with key "

    const-string v0, " is not a PreferenceScreen"

    .line 20
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_2
    :goto_0
    check-cast v2, Landroidx/preference/PreferenceScreen;

    .line 23
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 24
    iget-object p2, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eq v2, p2, :cond_4

    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->onDetached()V

    .line 26
    :cond_3
    iput-object v2, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    move v0, v3

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 27
    iput-boolean v3, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 28
    iget-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz p1, :cond_6

    .line 29
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 30
    :cond_5
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 31
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 32
    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method
