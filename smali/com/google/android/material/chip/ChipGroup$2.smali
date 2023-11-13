.class public final Lcom/google/android/material/chip/ChipGroup$2;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;

.field public final synthetic val$listener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$2;->this$0:Lcom/google/android/material/chip/ChipGroup;

    iput-object p2, p0, Lcom/google/android/material/chip/ChipGroup$2;->val$listener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
