.class public final Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field public onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {}, Landroidx/core/view/ViewCompat$Api17Impl;->generateViewId()I

    move-result v0

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 7
    iget-object v0, v0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    .line 8
    move-object v1, p2

    check-cast v1, Lcom/google/android/material/chip/Chip;

    .line 9
    iget-object v2, v0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    .line 12
    :cond_1
    new-instance v2, Lcom/google/android/material/internal/CheckableGroup$1;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/CheckableGroup$1;-><init>(Lcom/google/android/material/internal/CheckableGroup;)V

    invoke-interface {v1, v2}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz p0, :cond_3

    .line 14
    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    if-ne p1, v0, :cond_0

    instance-of v1, p2, Lcom/google/android/material/chip/Chip;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    .line 3
    move-object v1, p2

    check-cast v1, Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    .line 5
    iget-object v2, v0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, v0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/HashSet;

    invoke-interface {v1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
