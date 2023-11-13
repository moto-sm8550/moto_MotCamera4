.class public final Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DropDownPreferenceCategory.java"


# instance fields
.field public final synthetic val$itemView:Landroid/view/View;

.field public final synthetic val$parentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$2;->val$parentView:Landroid/view/View;

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$2;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$2;->val$parentView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$2;->val$itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$2;->val$itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
