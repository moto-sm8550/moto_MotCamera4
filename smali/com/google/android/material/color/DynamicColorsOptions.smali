.class public final Lcom/google/android/material/color/DynamicColorsOptions;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    }
.end annotation


# static fields
.field public static final ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColorsOptions$1;

.field public static final NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColorsOptions$2;


# instance fields
.field public final onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

.field public final precondition:Lcom/google/android/material/color/DynamicColors$Precondition;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$1;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColorsOptions$1;

    .line 2
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$2;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$2;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColorsOptions$2;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColorsOptions$1;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 4
    sget-object p1, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColorsOptions$2;

    .line 5
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-void
.end method
