.class public Lcom/android/internal/widget/LockPatternCircleView;
.super Lcom/android/internal/widget/LockPatternView;
.source "LockPatternCircleView.java"


# instance fields
.field private mCircleRadius:I

.field private mCircleStrokeWidth:I

.field private mDotRadius:I

.field private mOuterCircleRadius:I

.field private mOuterCircleStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10500a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mDotRadius:I

    .line 51
    const v1, 0x10500a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mCircleRadius:I

    .line 52
    const v1, 0x10500a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mCircleStrokeWidth:I

    .line 53
    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mOuterCircleRadius:I

    .line 55
    const v1, 0x10500a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mOuterCircleStrokeWidth:I

    .line 58
    const v1, 0x106004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mRegularColor:I

    .line 59
    const v1, 0x106004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mErrorColor:I

    .line 60
    const v1, 0x106004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mSuccessColor:I

    .line 61
    return-void
.end method


# virtual methods
.method protected drawCircle(Landroid/graphics/Canvas;Lcom/android/internal/widget/LockPatternView$CellState;FFZ)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "partOfPattern"    # Z

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 66
    iget v0, p2, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    .line 67
    .local v0, "translationY":F
    if-eqz p5, :cond_3

    .line 69
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/widget/LockPatternCircleView;->mRegularColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p2, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    float-to-int v1, p3

    int-to-float v1, v1

    float-to-int v2, p4

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/internal/widget/LockPatternCircleView;->mDotRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/widget/LockPatternCircleView;->mOuterCircleStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-boolean v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPatternInProgress:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/widget/LockPatternCircleView;->mRegularColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    :goto_0
    float-to-int v1, p3

    int-to-float v1, v1

    float-to-int v2, p4

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/internal/widget/LockPatternCircleView;->mOuterCircleRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    :goto_1
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_2

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/widget/LockPatternCircleView;->mSuccessColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/widget/LockPatternCircleView;->mErrorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/widget/LockPatternCircleView;->mRegularColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p2, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/widget/LockPatternCircleView;->mCircleStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    float-to-int v1, p3

    int-to-float v1, v1

    float-to-int v2, p4

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/internal/widget/LockPatternCircleView;->mCircleRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected getCurrentColor(Z)I
    .locals 1
    .param p1, "partOfPattern"    # Z

    .prologue
    .line 104
    iget v0, p0, Lcom/android/internal/widget/LockPatternCircleView;->mRegularColor:I

    return v0
.end method
