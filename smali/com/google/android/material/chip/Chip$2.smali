.class public final Lcom/google/android/material/chip/Chip$2;
.super Ljava/lang/Object;
.source "Chip.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    if-eqz v1, :cond_1

    .line 3
    check-cast v1, Lcom/google/android/material/internal/CheckableGroup$1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 4
    iget-object v2, v1, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, v1, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    .line 7
    iget-boolean v3, v2, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    .line 8
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    :goto_0
    iget-object v0, v1, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    .line 12
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_2

    .line 13
    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_2
    return-void
.end method
